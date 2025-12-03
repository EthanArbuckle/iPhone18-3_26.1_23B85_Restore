@interface VNdGg5skzXHSAENO6T3enHEConfiguration
- (VNdGg5skzXHSAENO6T3enHEConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNdGg5skzXHSAENO6T3enHEConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNdGg5skzXHSAENO6T3enHEConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setImageCropAndScaleOption:self->_imageCropAndScaleOption];
  }

  return v5;
}

- (VNdGg5skzXHSAENO6T3enHEConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNdGg5skzXHSAENO6T3enHEConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_imageCropAndScaleOption = 2;
  }

  return result;
}

@end