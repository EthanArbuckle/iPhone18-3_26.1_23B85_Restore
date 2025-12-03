@interface AXMLayoutCell
+ (id)sequence:(id)sequence;
- (CGRect)frame;
- (CGRect)normalizedFrame;
@end

@implementation AXMLayoutCell

+ (id)sequence:(id)sequence
{
  sequenceCopy = sequence;
  v4 = objc_alloc_init(AXMLayoutCell);
  feature = v4->_feature;
  v4->_feature = sequenceCopy;

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