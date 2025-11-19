@interface CRLWPRenderingAttributeOverride
- (CRLWPRenderingAttributeOverride)initWithKey:(id)a3 range:(_NSRange)a4 attributes:(id)a5;
- (_NSRange)range;
@end

@implementation CRLWPRenderingAttributeOverride

- (CRLWPRenderingAttributeOverride)initWithKey:(id)a3 range:(_NSRange)a4 attributes:(id)a5
{
  length = a4.length;
  location = a4.location;
  v10 = a3;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CRLWPRenderingAttributeOverride;
  v12 = [(CRLWPRenderingAttributeOverride *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, a3);
    v13->_range.location = location;
    v13->_range.length = length;
    objc_storeStrong(&v13->_attributes, a5);
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