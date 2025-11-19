@interface VNImageBasedRequestConfiguration
- (CGRect)regionOfInterest;
- (VNImageBasedRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNImageBasedRequestConfiguration

- (CGRect)regionOfInterest
{
  x = self->_regionOfInterest.origin.x;
  y = self->_regionOfInterest.origin.y;
  width = self->_regionOfInterest.size.width;
  height = self->_regionOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNImageBasedRequestConfiguration;
  v4 = [(VNRequestConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setRegionOfInterest:{self->_regionOfInterest.origin.x, self->_regionOfInterest.origin.y, self->_regionOfInterest.size.width, self->_regionOfInterest.size.height}];
    [v5 setInputFaceObservations:self->_inputFaceObservations];
    [v5 setInputDetectedObjectObservations:self->_inputDetectedObjectObservations];
  }

  return v5;
}

- (VNImageBasedRequestConfiguration)initWithRequestClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = VNImageBasedRequestConfiguration;
  result = [(VNRequestConfiguration *)&v4 initWithRequestClass:a3];
  if (result)
  {
    result->_regionOfInterest = VNNormalizedIdentityRect;
  }

  return result;
}

@end