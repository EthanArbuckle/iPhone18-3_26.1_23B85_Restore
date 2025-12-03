@interface VNCreateSceneprintRequestConfiguration
- (VNCreateSceneprintRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNCreateSceneprintRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNCreateSceneprintRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setReturnAllResults:self->_returnAllResults];
    [v5 setUseCenterTileOnly:self->_useCenterTileOnly];
    [v5 setImageCropAndScaleOption:self->_imageCropAndScaleOption];
  }

  return v5;
}

- (VNCreateSceneprintRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNCreateSceneprintRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_returnAllResults = 0;
    result->_useCenterTileOnly = 0;
    result->_imageCropAndScaleOption = 2;
  }

  return result;
}

@end