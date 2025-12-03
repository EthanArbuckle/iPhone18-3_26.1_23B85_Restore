@interface AMSInt
+ (id)intWithInt:(int)int;
- (AMSInt)initWithCoder:(id)coder;
- (AMSInt)initWithInt:(int)int;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInt:(id)int;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSInt

- (AMSInt)initWithInt:(int)int
{
  v5.receiver = self;
  v5.super_class = AMSInt;
  result = [(AMSInt *)&v5 init];
  if (result)
  {
    result->_value = int;
  }

  return result;
}

+ (id)intWithInt:(int)int
{
  v3 = [[self alloc] initWithInt:*&int];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSInt *)self isEqualToInt:equalCopy];

  return v5;
}

- (BOOL)isEqualToInt:(id)int
{
  if (!int)
  {
    return 0;
  }

  intCopy = int;
  LODWORD(self) = [(AMSInt *)self value];
  value = [intCopy value];

  return self == value;
}

- (AMSInt)initWithCoder:(id)coder
{
  v4 = [coder decodeIntForKey:@"value"];

  return [(AMSInt *)self initWithInt:v4];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[AMSInt value](self forKey:{"value"), @"value"}];
}

@end