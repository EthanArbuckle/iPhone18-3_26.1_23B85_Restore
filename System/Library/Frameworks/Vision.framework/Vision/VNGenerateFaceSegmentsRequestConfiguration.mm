@interface VNGenerateFaceSegmentsRequestConfiguration
+ (BOOL)expansionRatioWithinValidRange:(float)a3;
- (VNGenerateFaceSegmentsRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setFaceBoundingBoxExpansionRatio:(float)a3;
@end

@implementation VNGenerateFaceSegmentsRequestConfiguration

- (void)setFaceBoundingBoxExpansionRatio:(float)a3
{
  v5 = objc_opt_class();
  *&v6 = a3;
  if ([v5 expansionRatioWithinValidRange:v6])
  {
    self->_faceBoundingBoxExpansionRatio = a3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = VNGenerateFaceSegmentsRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v8 copyWithZone:a3];
  v6 = v4;
  if (v4)
  {
    *&v5 = self->_faceBoundingBoxExpansionRatio;
    [v4 setFaceBoundingBoxExpansionRatio:v5];
  }

  return v6;
}

- (VNGenerateFaceSegmentsRequestConfiguration)initWithRequestClass:(Class)a3
{
  v7.receiver = self;
  v7.super_class = VNGenerateFaceSegmentsRequestConfiguration;
  v3 = [(VNImageBasedRequestConfiguration *)&v7 initWithRequestClass:a3];
  if (v3)
  {
    [objc_opt_class() defaultFaceBoundingBoxExpansionRatio];
    v3->_faceBoundingBoxExpansionRatio = v4;
    v5 = v3;
  }

  return v3;
}

+ (BOOL)expansionRatioWithinValidRange:(float)a3
{
  v4 = objc_opt_class();
  [v4 beginRangeFaceBoundingBoxExpansionRatio];
  if (v5 > a3)
  {
    return 0;
  }

  [v4 endRangeFaceBoundingBoxExpansionRatio];
  return v7 >= a3;
}

@end