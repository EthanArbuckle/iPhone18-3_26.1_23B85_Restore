@interface VNDetectTextRectanglesRequestConfiguration
- (VNDetectTextRectanglesRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNDetectTextRectanglesRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNDetectTextRectanglesRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setReportCharacterBoxes:self->_reportCharacterBoxes];
    [v5 setAlgorithm:self->_algorithm];
    [v5 setMinimumCharacterPixelHeight:self->_minimumCharacterPixelHeight];
    [v5 setDetectDiacritics:self->_detectDiacritics];
    [v5 setMinimizeFalseDetections:self->_minimizeFalseDetections];
    [v5 setTextRecognition:self->_textRecognition];
    [v5 setAdditionalCharacters:self->_additionalCharacters];
  }

  return v5;
}

- (VNDetectTextRectanglesRequestConfiguration)initWithRequestClass:(Class)a3
{
  v7.receiver = self;
  v7.super_class = VNDetectTextRectanglesRequestConfiguration;
  v3 = [(VNImageBasedRequestConfiguration *)&v7 initWithRequestClass:a3];
  v4 = v3;
  if (v3)
  {
    v3->_reportCharacterBoxes = 0;
    v3->_algorithm = 0;
    v3->_minimumCharacterPixelHeight = 10;
    v3->_detectDiacritics = 1;
    v3->_minimizeFalseDetections = 1;
    textRecognition = v3->_textRecognition;
    v3->_textRecognition = @"VNTextRecognitionOptionNone";
  }

  return v4;
}

@end