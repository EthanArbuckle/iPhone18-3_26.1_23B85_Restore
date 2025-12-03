@interface VSCasePreservingString
- (VSCasePreservingString)initWithString:(id)string;
@end

@implementation VSCasePreservingString

- (VSCasePreservingString)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = VSCasePreservingString;
  v5 = [(VSCasePreservingString *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    underlyingString = v5->_underlyingString;
    v5->_underlyingString = v6;
  }

  return v5;
}

@end