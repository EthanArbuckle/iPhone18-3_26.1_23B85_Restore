@interface VNNOPRequestConfiguration
- (VNNOPRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNNOPRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNNOPRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setDetectorPreferredImageSize:self->_detectorPreferredImageSize];
    [v5 setDetectorWantsAnisotropicScaling:self->_detectorWantsAnisotropicScaling];
    [v5 setDetectorExecutionTimeInterval:self->_detectorExecutionTimeInterval];
  }

  return v5;
}

- (VNNOPRequestConfiguration)initWithRequestClass:(Class)a3
{
  v9.receiver = self;
  v9.super_class = VNNOPRequestConfiguration;
  v3 = [(VNImageBasedRequestConfiguration *)&v9 initWithRequestClass:a3];
  if (v3)
  {
    v4 = [[VNSizeRange alloc] initWithMinimumDimension:299 maximumDimension:299 idealDimension:299];
    v5 = [[VNSupportedImageSize alloc] initWithIdealFormat:1111970369 pixelsWideRange:v4 pixelsHighRange:v4 aspectRatioHandling:0 idealOrientation:1 orientationAgnostic:1];

    detectorPreferredImageSize = v3->_detectorPreferredImageSize;
    v3->_detectorPreferredImageSize = v5;

    v3->_detectorWantsAnisotropicScaling = 1;
    v7 = v3;
  }

  return v3;
}

@end