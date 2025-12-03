@interface ExtensionRequestMetadata
- (BOOL)isEqual:(id)equal;
@end

@implementation ExtensionRequestMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSUUID *)self->_requestIdentifier isEqual:equalCopy[3]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end