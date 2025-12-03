@interface VNDetectRectanglesRequestConfiguration
- (VNDetectRectanglesRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNDetectRectanglesRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = VNDetectRectanglesRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v12 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setRequiredVersion:self->_requiredVersion];
    *&v6 = self->_minimumAspectRatio;
    [v5 setMinimumAspectRatio:v6];
    *&v7 = self->_maximumAspectRatio;
    [v5 setMaximumAspectRatio:v7];
    *&v8 = self->_quadratureTolerance;
    [v5 setQuadratureTolerance:v8];
    *&v9 = self->_minimumSize;
    [v5 setMinimumSize:v9];
    *&v10 = self->_minimumConfidence;
    [v5 setMinimumConfidence:v10];
    [v5 setMaximumObservations:self->_maximumObservations];
  }

  return v5;
}

- (VNDetectRectanglesRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNDetectRectanglesRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_requiredVersion = 2;
    result->_minimumAspectRatio = 0.5;
    result->_maximumAspectRatio = 1.0;
    result->_quadratureTolerance = 30.0;
    result->_minimumSize = 0.2;
    result->_minimumConfidence = 0.0;
    result->_maximumObservations = 1;
  }

  return result;
}

@end