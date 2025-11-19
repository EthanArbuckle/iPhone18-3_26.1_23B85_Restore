@interface CRLWPNumberAttachment
- (id)stringEquivalent;
@end

@implementation CRLWPNumberAttachment

- (id)stringEquivalent
{
  if (self->_stringValue)
  {
    return self->_stringValue;
  }

  else
  {
    return &stru_1018BCA28;
  }
}

@end