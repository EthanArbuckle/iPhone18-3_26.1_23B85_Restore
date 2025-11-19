@interface AMSUnsignedChar
+ (id)unsignedCharWithUnsignedChar:(unsigned __int8)a3;
- (AMSUnsignedChar)initWithUnsignedChar:(unsigned __int8)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUnsignedChar:(id)a3;
@end

@implementation AMSUnsignedChar

- (AMSUnsignedChar)initWithUnsignedChar:(unsigned __int8)a3
{
  v5.receiver = self;
  v5.super_class = AMSUnsignedChar;
  result = [(AMSUnsignedChar *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

+ (id)unsignedCharWithUnsignedChar:(unsigned __int8)a3
{
  v3 = [[a1 alloc] initWithUnsignedChar:a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSUnsignedChar *)self isEqualToUnsignedChar:v4];

  return v5;
}

- (BOOL)isEqualToUnsignedChar:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  LODWORD(self) = [(AMSUnsignedChar *)self value];
  v5 = [v4 value];

  return self == v5;
}

@end