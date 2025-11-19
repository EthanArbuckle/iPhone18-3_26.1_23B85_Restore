@interface VSCasePreservingString
- (VSCasePreservingString)initWithString:(id)a3;
@end

@implementation VSCasePreservingString

- (VSCasePreservingString)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VSCasePreservingString;
  v5 = [(VSCasePreservingString *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    underlyingString = v5->_underlyingString;
    v5->_underlyingString = v6;
  }

  return v5;
}

@end