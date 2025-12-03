@interface VNGenerateFaceSegmentsRequestConfiguration
+ (BOOL)expansionRatioWithinValidRange:(float)range;
- (VNGenerateFaceSegmentsRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setFaceBoundingBoxExpansionRatio:(float)ratio;
@end

@implementation VNGenerateFaceSegmentsRequestConfiguration

- (void)setFaceBoundingBoxExpansionRatio:(float)ratio
{
  v5 = objc_opt_class();
  *&v6 = ratio;
  if ([v5 expansionRatioWithinValidRange:v6])
  {
    self->_faceBoundingBoxExpansionRatio = ratio;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = VNGenerateFaceSegmentsRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v8 copyWithZone:zone];
  v6 = v4;
  if (v4)
  {
    *&v5 = self->_faceBoundingBoxExpansionRatio;
    [v4 setFaceBoundingBoxExpansionRatio:v5];
  }

  return v6;
}

- (VNGenerateFaceSegmentsRequestConfiguration)initWithRequestClass:(Class)class
{
  v7.receiver = self;
  v7.super_class = VNGenerateFaceSegmentsRequestConfiguration;
  v3 = [(VNImageBasedRequestConfiguration *)&v7 initWithRequestClass:class];
  if (v3)
  {
    [objc_opt_class() defaultFaceBoundingBoxExpansionRatio];
    v3->_faceBoundingBoxExpansionRatio = v4;
    v5 = v3;
  }

  return v3;
}

+ (BOOL)expansionRatioWithinValidRange:(float)range
{
  v4 = objc_opt_class();
  [v4 beginRangeFaceBoundingBoxExpansionRatio];
  if (v5 > range)
  {
    return 0;
  }

  [v4 endRangeFaceBoundingBoxExpansionRatio];
  return v7 >= range;
}

@end