@interface VNGenerateImageFeaturePrintRequestConfiguration
- (VNGenerateImageFeaturePrintRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNGenerateImageFeaturePrintRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = VNGenerateImageFeaturePrintRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 18) = self->_imageCropAndScaleOption;
  }

  return result;
}

- (VNGenerateImageFeaturePrintRequestConfiguration)initWithRequestClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = VNGenerateImageFeaturePrintRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:a3];
  if (result)
  {
    result->_imageCropAndScaleOption = 2;
  }

  return result;
}

@end