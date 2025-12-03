@interface AMSChar
+ (id)charWithChar:(char)char;
- (AMSChar)initWithChar:(char)char;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToChar:(id)char;
@end

@implementation AMSChar

- (AMSChar)initWithChar:(char)char
{
  v5.receiver = self;
  v5.super_class = AMSChar;
  result = [(AMSChar *)&v5 init];
  if (result)
  {
    result->_value = char;
  }

  return result;
}

+ (id)charWithChar:(char)char
{
  v3 = [[self alloc] initWithChar:char];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSChar *)self isEqualToChar:equalCopy];

  return v5;
}

- (BOOL)isEqualToChar:(id)char
{
  if (!char)
  {
    return 0;
  }

  charCopy = char;
  LODWORD(self) = [(AMSChar *)self value];
  value = [charCopy value];

  return self == value;
}

@end