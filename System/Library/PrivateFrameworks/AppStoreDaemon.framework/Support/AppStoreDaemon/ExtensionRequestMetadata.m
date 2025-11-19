@interface ExtensionRequestMetadata
- (BOOL)isEqual:(id)a3;
@end

@implementation ExtensionRequestMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSUUID *)self->_requestIdentifier isEqual:v4[3]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end