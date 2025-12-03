@interface VNGenerateImageFeaturePrintRequestConfiguration
- (VNGenerateImageFeaturePrintRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNGenerateImageFeaturePrintRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = VNGenerateImageFeaturePrintRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 18) = self->_imageCropAndScaleOption;
  }

  return result;
}

- (VNGenerateImageFeaturePrintRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNGenerateImageFeaturePrintRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_imageCropAndScaleOption = 2;
  }

  return result;
}

@end