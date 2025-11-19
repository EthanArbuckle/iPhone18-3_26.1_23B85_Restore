@interface ARLightEstimationData
- (double)timestamp;
@end

@implementation ARLightEstimationData

- (double)timestamp
{
  v3 = [(ARLightEstimationData *)self lightEstimate];
  objc_opt_class();
  v4 = -1.0;
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ARLightEstimationData *)self lightEstimate];
    [v5 timestamp];
    v4 = v6;
  }

  return v4;
}

@end