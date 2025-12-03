@interface AVCommonLoggingIdentifier
- (AVCommonLoggingIdentifier)initWithIdentifierSuffix:(id)suffix prefixlength:(unsigned __int8)prefixlength;
- (id)makeDerivedIdentifier;
- (void)dealloc;
@end

@implementation AVCommonLoggingIdentifier

- (id)makeDerivedIdentifier
{
  v3 = FigAtomicIncrement32();
  v4 = [AVSpecifiedLoggingIdentifier alloc];
  v5 = -[AVSpecifiedLoggingIdentifier initWithSpecifiedName:](v4, "initWithSpecifiedName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%02d", -[AVCommonLoggingIdentifier name](self, "name"), v3]);

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCommonLoggingIdentifier;
  [(AVCommonLoggingIdentifier *)&v3 dealloc];
}

- (AVCommonLoggingIdentifier)initWithIdentifierSuffix:(id)suffix prefixlength:(unsigned __int8)prefixlength
{
  v8.receiver = self;
  v8.super_class = AVCommonLoggingIdentifier;
  v5 = [(AVCommonLoggingIdentifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_derivedIdentifierCounter = 0;
    v5->_identifierName = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", suffix, FigCFStringCreateLoggingIdentifierOfLength()];
  }

  return v6;
}

@end