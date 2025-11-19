@interface ADJasperPointCloudFilterParameters
+ (id)emptyFilter;
- (ADJasperPointCloudFilterParameters)init;
@end

@implementation ADJasperPointCloudFilterParameters

- (ADJasperPointCloudFilterParameters)init
{
  v3.receiver = self;
  v3.super_class = ADJasperPointCloudFilterParameters;
  result = [(ADJasperPointCloudFilterParameters *)&v3 init];
  if (result)
  {
    *&result->_confidenceThreshold = xmmword_2404C8630;
    result->_shortRangeConfidenceThreshold = 0.75;
    *&result->_echoMode = xmmword_2404C8640;
    result->_duplicateProjectedSpotsMode = 0;
  }

  return result;
}

+ (id)emptyFilter
{
  v2 = objc_opt_new();
  [v2 setEchoMode:3];
  [v2 setConfidenceThreshold:0.0];
  [v2 setMinDistance:0.0];
  LODWORD(v3) = 2139095039;
  [v2 setMaxDistance:v3];
  [v2 setShortRangeDepthThreshold:0.0];
  [v2 setShortRangeConfidenceThreshold:0.0];
  [v2 setBankIDMask:0xFFFFFFFFLL];
  [v2 setDuplicateProjectedSpotsMode:0];

  return v2;
}

@end