@interface VNClassifyImageRequestConfiguration
- (VNClassifyImageRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNClassifyImageRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNClassifyImageRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setCustomHierarchy:self->_customHierarchy];
    [v5 setMaximumLeafObservations:self->_maximumLeafObservations];
    [v5 setMaximumHierarchicalObservations:self->_maximumHierarchicalObservations];
    [v5 setImageCropAndScaleOption:self->_imageCropAndScaleOption];
  }

  return v5;
}

- (VNClassifyImageRequestConfiguration)initWithRequestClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = VNClassifyImageRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:a3];
  if (result)
  {
    result->_maximumLeafObservations = 0x7FFFFFFFFFFFFFFFLL;
    result->_maximumHierarchicalObservations = 0x7FFFFFFFFFFFFFFFLL;
    result->_imageCropAndScaleOption = 2;
  }

  return result;
}

@end