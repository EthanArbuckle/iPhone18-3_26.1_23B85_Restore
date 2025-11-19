@interface CNUuidIdentifierProvider
- (CNUuidIdentifierProvider)initWithSuffix:(id)a3;
- (id)makeIdentifier;
@end

@implementation CNUuidIdentifierProvider

- (id)makeIdentifier
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [v4 stringByAppendingString:self->_suffix];

  return v5;
}

- (CNUuidIdentifierProvider)initWithSuffix:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNUuidIdentifierProvider;
  v5 = [(CNUuidIdentifierProvider *)&v10 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [@":" stringByAppendingString:v4];
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