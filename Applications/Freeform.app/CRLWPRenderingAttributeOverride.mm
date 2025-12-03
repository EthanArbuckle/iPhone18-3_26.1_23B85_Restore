@interface CRLWPRenderingAttributeOverride
- (CRLWPRenderingAttributeOverride)initWithKey:(id)key range:(_NSRange)range attributes:(id)attributes;
- (_NSRange)range;
@end

@implementation CRLWPRenderingAttributeOverride

- (CRLWPRenderingAttributeOverride)initWithKey:(id)key range:(_NSRange)range attributes:(id)attributes
{
  length = range.length;
  location = range.location;
  keyCopy = key;
  attributesCopy = attributes;
  v15.receiver = self;
  v15.super_class = CRLWPRenderingAttributeOverride;
  v12 = [(CRLWPRenderingAttributeOverride *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, key);
    v13->_range.location = location;
    v13->_range.length = length;
    objc_storeStrong(&v13->_attributes, attributes);
  }

  return v13;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end