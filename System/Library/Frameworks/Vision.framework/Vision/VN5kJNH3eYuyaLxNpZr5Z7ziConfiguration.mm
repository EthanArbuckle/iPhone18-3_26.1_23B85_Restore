@interface VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration
- (VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setImageCropAndScaleOption:self->_imageCropAndScaleOption];
  }

  return v5;
}

- (VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_imageCropAndScaleOption = 2;
  }

  return result;
}

@end