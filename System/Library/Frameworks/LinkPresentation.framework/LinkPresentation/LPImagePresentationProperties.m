@interface LPImagePresentationProperties
- (CGSize)fixedSize;
- (LPImagePresentationProperties)init;
@end

@implementation LPImagePresentationProperties

- (LPImagePresentationProperties)init
{
  v6.receiver = self;
  v6.super_class = LPImagePresentationProperties;
  v2 = [(LPImagePresentationProperties *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldApplyBackground = 0;
    v2->_filter = 0;
    v2->_scalingMode = 0;
    v4 = v2;
  }

  return v3;
}

- (CGSize)fixedSize
{
  width = self->_fixedSize.width;
  height = self->_fixedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end