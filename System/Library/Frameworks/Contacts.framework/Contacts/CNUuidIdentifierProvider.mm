@interface CNUuidIdentifierProvider
- (CNUuidIdentifierProvider)initWithSuffix:(id)suffix;
- (id)makeIdentifier;
@end

@implementation CNUuidIdentifierProvider

- (id)makeIdentifier
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [uUIDString stringByAppendingString:self->_suffix];

  return v5;
}

- (CNUuidIdentifierProvider)initWithSuffix:(id)suffix
{
  suffixCopy = suffix;
  v10.receiver = self;
  v10.super_class = CNUuidIdentifierProvider;
  v5 = [(CNUuidIdentifierProvider *)&v10 init];
  if (v5)
  {
    if (suffixCopy)
    {
      v6 = [@":" stringByAppendingString:suffixCopy];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E696AEC0]);
    }

    suffix = v5->_suffix;
    v5->_suffix = v6;

    v8 = v5;
  }

  return v5;
}

@end