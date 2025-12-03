@interface AMSUnsignedChar
+ (id)unsignedCharWithUnsignedChar:(unsigned __int8)char;
- (AMSUnsignedChar)initWithUnsignedChar:(unsigned __int8)char;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUnsignedChar:(id)char;
@end

@implementation AMSUnsignedChar

- (AMSUnsignedChar)initWithUnsignedChar:(unsigned __int8)char
{
  v5.receiver = self;
  v5.super_class = AMSUnsignedChar;
  result = [(AMSUnsignedChar *)&v5 init];
  if (result)
  {
    result->_value = char;
  }

  return result;
}

+ (id)unsignedCharWithUnsignedChar:(unsigned __int8)char
{
  v3 = [[self alloc] initWithUnsignedChar:char];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSUnsignedChar *)self isEqualToUnsignedChar:equalCopy];

  return v5;
}

- (BOOL)isEqualToUnsignedChar:(id)char
{
  if (!char)
  {
    return 0;
  }

  charCopy = char;
  LODWORD(self) = [(AMSUnsignedChar *)self value];
  value = [charCopy value];

  return self == value;
}

@end