@interface AXMLayoutSequence
+ (id)sequence:(id)a3;
- (CGRect)frame;
- (CGRect)normalizedFrame;
@end

@implementation AXMLayoutSequence

+ (id)sequence:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AXMLayoutSequence);
  feature = v4->_feature;
  v4->_feature = v3;

  return v4;
}

- (CGRect)frame
{
  [(AXMVisionFeature *)self->_feature frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)normalizedFrame
{
  [(AXMVisionFeature *)self->_feature normalizedFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end