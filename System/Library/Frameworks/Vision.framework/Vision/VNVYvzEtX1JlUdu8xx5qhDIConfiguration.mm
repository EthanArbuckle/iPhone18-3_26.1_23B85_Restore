@interface VNVYvzEtX1JlUdu8xx5qhDIConfiguration
- (VNVYvzEtX1JlUdu8xx5qhDIConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNVYvzEtX1JlUdu8xx5qhDIConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNVYvzEtX1JlUdu8xx5qhDIConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setImageCropAndScaleOption:self->_imageCropAndScaleOption];
  }

  return v5;
}

- (VNVYvzEtX1JlUdu8xx5qhDIConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNVYvzEtX1JlUdu8xx5qhDIConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_imageCropAndScaleOption = 2;
  }

  return result;
}

@end