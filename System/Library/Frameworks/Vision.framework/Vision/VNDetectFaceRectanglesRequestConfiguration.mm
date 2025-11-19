@interface VNDetectFaceRectanglesRequestConfiguration
- (VNDetectFaceRectanglesRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNDetectFaceRectanglesRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNDetectFaceRectanglesRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setFaceCoreType:self->_faceCoreType];
    [v5 setFaceCoreMinFaceSize:self->_faceCoreMinFaceSize];
    [v5 setFaceCoreNumberOfDetectionAngles:self->_faceCoreNumberOfDetectionAngles];
    [v5 setFaceCoreInitialAngle:self->_faceCoreInitialAngle];
    [v5 setFaceCoreEnhanceEyesAndMouthLocalization:self->_faceCoreEnhanceEyesAndMouthLocalization];
    [v5 setFaceCoreExtractBlink:self->_faceCoreExtractBlink];
    [v5 setFaceCoreExtractSmile:self->_faceCoreExtractSmile];
    [v5 setPrecisionRecallThresholdOverride:self->_precisionRecallThresholdOverride];
  }

  return v5;
}

- (VNDetectFaceRectanglesRequestConfiguration)initWithRequestClass:(Class)a3
{
  v10.receiver = self;
  v10.super_class = VNDetectFaceRectanglesRequestConfiguration;
  v3 = [(VNImageBasedRequestConfiguration *)&v10 initWithRequestClass:a3];
  v4 = v3;
  if (v3)
  {
    v3->_faceCoreType = 0;
    faceCoreMinFaceSize = v3->_faceCoreMinFaceSize;
    v3->_faceCoreMinFaceSize = 0;

    faceCoreNumberOfDetectionAngles = v4->_faceCoreNumberOfDetectionAngles;
    v4->_faceCoreNumberOfDetectionAngles = 0;

    faceCoreInitialAngle = v4->_faceCoreInitialAngle;
    v4->_faceCoreInitialAngle = 0;

    v4->_faceCoreEnhanceEyesAndMouthLocalization = 0;
    v4->_faceCoreExtractBlink = 0;
    v4->_faceCoreExtractSmile = 0;
    v8 = v4;
  }

  return v4;
}

@end