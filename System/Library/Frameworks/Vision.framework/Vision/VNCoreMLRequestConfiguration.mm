@interface VNCoreMLRequestConfiguration
- (VNCoreMLRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)updateWithPropertiesOfModel:(id)a3;
@end

@implementation VNCoreMLRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNCoreMLRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setImageCropAndScaleOption:self->_imageCropAndScaleOption];
    [v5 setModelCachingIdentifier:self->_modelCachingIdentifier];
  }

  return v5;
}

- (void)updateWithPropertiesOfModel:(id)a3
{
  v4 = [a3 cachingIdentifier];
  [(VNCoreMLRequestConfiguration *)self setModelCachingIdentifier:?];
}

- (VNCoreMLRequestConfiguration)initWithRequestClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = VNCoreMLRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:a3];
  if (result)
  {
    result->_imageCropAndScaleOption = 0;
  }

  return result;
}

@end