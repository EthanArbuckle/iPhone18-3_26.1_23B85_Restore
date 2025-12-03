@interface VNDetectFaceGazeRequestConfiguration
- (VNDetectFaceGazeRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNDetectFaceGazeRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = VNDetectFaceGazeRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v10 copyWithZone:zone];
  v6 = v4;
  if (v4)
  {
    *&v5 = self->_gazeHeatMapThreshold;
    [v4 setGazeHeatMapThreshold:v5];
    *&v7 = self->_minimumFaceDimension;
    [v6 setMinimumFaceDimension:v7];
    *&v8 = self->_commonGazeLocationRadius;
    [v6 setCommonGazeLocationRadius:v8];
    [v6 setResolveSomewhereElseDirection:self->_resolveSomewhereElseDirection];
  }

  return v6;
}

- (VNDetectFaceGazeRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNDetectFaceGazeRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_gazeHeatMapThreshold = 0.2;
    result->_minimumFaceDimension = 0.03;
    result->_commonGazeLocationRadius = 0.01;
    result->_resolveSomewhereElseDirection = 1;
  }

  return result;
}

@end