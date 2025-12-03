@interface AMSUnsignedInt
+ (id)unsignedIntWithUnsignedInt:(unsigned int)int;
- (AMSUnsignedInt)initWithUnsignedInt:(unsigned int)int;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUnsignedInt:(id)int;
@end

@implementation AMSUnsignedInt

- (AMSUnsignedInt)initWithUnsignedInt:(unsigned int)int
{
  v5.receiver = self;
  v5.super_class = AMSUnsignedInt;
  result = [(AMSUnsignedInt *)&v5 init];
  if (result)
  {
    result->_value = int;
  }

  return result;
}

+ (id)unsignedIntWithUnsignedInt:(unsigned int)int
{
  v3 = [[self alloc] initWithUnsignedInt:*&int];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSUnsignedInt *)self isEqualToUnsignedInt:equalCopy];

  return v5;
}

- (BOOL)isEqualToUnsignedInt:(id)int
{
  if (!int)
  {
    return 0;
  }

  intCopy = int;
  LODWORD(self) = [(AMSUnsignedInt *)self value];
  value = [intCopy value];

  return self == value;
}

@end