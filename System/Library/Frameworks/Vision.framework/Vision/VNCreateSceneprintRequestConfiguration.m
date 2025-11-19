@interface VNCreateSceneprintRequestConfiguration
- (VNCreateSceneprintRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNCreateSceneprintRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNCreateSceneprintRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setReturnAllResults:self->_returnAllResults];
    [v5 setUseCenterTileOnly:self->_useCenterTileOnly];
    [v5 setImageCropAndScaleOption:self->_imageCropAndScaleOption];
  }

  return v5;
}

- (VNCreateSceneprintRequestConfiguration)initWithRequestClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = VNCreateSceneprintRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:a3];
  if (result)
  {
    result->_returnAllResults = 0;
    result->_useCenterTileOnly = 0;
    result->_imageCropAndScaleOption = 2;
  }

  return result;
}

@end