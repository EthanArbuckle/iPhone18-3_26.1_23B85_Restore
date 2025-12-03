@interface AMSUnsignedShort
+ (id)unsignedShortWithUnsignedShort:(unsigned __int16)short;
- (AMSUnsignedShort)initWithUnsignedShort:(unsigned __int16)short;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUnsignedShort:(id)short;
@end

@implementation AMSUnsignedShort

- (AMSUnsignedShort)initWithUnsignedShort:(unsigned __int16)short
{
  v5.receiver = self;
  v5.super_class = AMSUnsignedShort;
  result = [(AMSUnsignedShort *)&v5 init];
  if (result)
  {
    result->_value = short;
  }

  return result;
}

+ (id)unsignedShortWithUnsignedShort:(unsigned __int16)short
{
  v3 = [[self alloc] initWithUnsignedShort:short];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSUnsignedShort *)self isEqualToUnsignedShort:equalCopy];

  return v5;
}

- (BOOL)isEqualToUnsignedShort:(id)short
{
  if (!short)
  {
    return 0;
  }

  shortCopy = short;
  LODWORD(self) = [(AMSUnsignedShort *)self value];
  value = [shortCopy value];

  return self == value;
}

@end