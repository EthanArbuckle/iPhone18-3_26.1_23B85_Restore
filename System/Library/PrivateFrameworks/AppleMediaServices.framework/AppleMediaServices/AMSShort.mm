@interface AMSShort
+ (id)shortWithShort:(signed __int16)short;
- (AMSShort)initWithShort:(signed __int16)short;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToShort:(id)short;
@end

@implementation AMSShort

- (AMSShort)initWithShort:(signed __int16)short
{
  v5.receiver = self;
  v5.super_class = AMSShort;
  result = [(AMSShort *)&v5 init];
  if (result)
  {
    result->_value = short;
  }

  return result;
}

+ (id)shortWithShort:(signed __int16)short
{
  v3 = [[self alloc] initWithShort:short];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSShort *)self isEqualToShort:equalCopy];

  return v5;
}

- (BOOL)isEqualToShort:(id)short
{
  if (!short)
  {
    return 0;
  }

  shortCopy = short;
  LODWORD(self) = [(AMSShort *)self value];
  value = [shortCopy value];

  return self == value;
}

@end