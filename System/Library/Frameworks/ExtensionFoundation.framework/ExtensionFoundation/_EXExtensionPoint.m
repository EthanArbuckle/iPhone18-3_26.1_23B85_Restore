@interface _EXExtensionPoint
- (id)copyWithZone:(_NSZone *)a3;
- (void)reset;
@end

@implementation _EXExtensionPoint

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(_EXExtensionPoint *)self identifier];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  v7 = [(_EXExtensionPoint *)self SDKDictionary];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  *(v4 + 8) = [(_EXExtensionPoint *)self platform];
  *(v4 + 32) = [(_EXExtensionPoint *)self variant];
  v9 = [(_EXExtensionPoint *)self url];
  v10 = *(v4 + 40);
  *(v4 + 40) = v9;

  return v4;
}

- (void)reset
{
  identifier = self->_identifier;
  self->_identifier = 0;

  SDKDictionary = self->_SDKDictionary;
  self->_SDKDictionary = 0;

  self->_platform = 0;
  url = self->_url;
  self->_variant = 0;
  self->_url = 0;
}

@end