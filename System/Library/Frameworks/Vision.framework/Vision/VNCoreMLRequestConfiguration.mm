@interface VNCoreMLRequestConfiguration
- (VNCoreMLRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (void)updateWithPropertiesOfModel:(id)model;
@end

@implementation VNCoreMLRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNCoreMLRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setImageCropAndScaleOption:self->_imageCropAndScaleOption];
    [v5 setModelCachingIdentifier:self->_modelCachingIdentifier];
  }

  return v5;
}

- (void)updateWithPropertiesOfModel:(id)model
{
  cachingIdentifier = [model cachingIdentifier];
  [(VNCoreMLRequestConfiguration *)self setModelCachingIdentifier:?];
}

- (VNCoreMLRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNCoreMLRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_imageCropAndScaleOption = 0;
  }

  return result;
}

@end