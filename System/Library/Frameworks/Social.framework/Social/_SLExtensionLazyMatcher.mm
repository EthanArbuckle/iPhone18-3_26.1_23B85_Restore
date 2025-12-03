@interface _SLExtensionLazyMatcher
- (NSExtension)extension;
- (_SLExtensionLazyMatcher)initWithIdentifier:(id)identifier;
@end

@implementation _SLExtensionLazyMatcher

- (_SLExtensionLazyMatcher)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = _SLExtensionLazyMatcher;
  v5 = [(_SLExtensionLazyMatcher *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (NSExtension)extension
{
  extension = self->_extension;
  if (!extension)
  {
    identifier = self->_identifier;
    v10 = 0;
    v6 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:identifier error:&v10];
    v7 = v10;
    v8 = self->_extension;
    self->_extension = v6;

    _SLLog(v2, 7, @"_SLExtensionLazyMatcher for %@ got extension %@ error %{public}@");
    extension = self->_extension;
  }

  return extension;
}

@end