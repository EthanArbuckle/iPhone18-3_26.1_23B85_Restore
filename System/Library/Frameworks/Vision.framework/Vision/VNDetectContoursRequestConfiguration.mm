@interface VNDetectContoursRequestConfiguration
- (VNDetectContoursRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNDetectContoursRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = VNDetectContoursRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v8 copyWithZone:a3];
  v6 = v4;
  if (v4)
  {
    *&v5 = self->_contrastAdjustment;
    [v4 setContrastAdjustment:v5];
    [v6 setContrastPivot:self->_contrastPivot];
    [v6 setDetectsDarkOnLight:self->_detectsDarkOnLight];
    [v6 setMaximumImageDimension:self->_maximumImageDimension];
    [v6 setInHierarchy:self->_inHierarchy];
    [v6 setForceUseInputCVPixelBufferDirectly:self->_forceUseInputCVPixelBufferDirectly];
  }

  return v6;
}

- (VNDetectContoursRequestConfiguration)initWithRequestClass:(Class)a3
{
  v9.receiver = self;
  v9.super_class = VNDetectContoursRequestConfiguration;
  v3 = [(VNImageBasedRequestConfiguration *)&v9 initWithRequestClass:a3];
  v5 = v3;
  if (v3)
  {
    v3->_contrastAdjustment = 2.0;
    LODWORD(v4) = 0.5;
    v6 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    contrastPivot = v5->_contrastPivot;
    v5->_contrastPivot = v6;

    v5->_detectsDarkOnLight = 1;
    v5->_maximumImageDimension = 512;
    v5->_inHierarchy = 1;
  }

  return v5;
}

@end