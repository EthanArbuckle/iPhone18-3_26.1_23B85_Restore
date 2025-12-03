@interface ARLightEstimationData
- (double)timestamp;
@end

@implementation ARLightEstimationData

- (double)timestamp
{
  lightEstimate = [(ARLightEstimationData *)self lightEstimate];
  objc_opt_class();
  v4 = -1.0;
  if (objc_opt_isKindOfClass())
  {
    lightEstimate2 = [(ARLightEstimationData *)self lightEstimate];
    [lightEstimate2 timestamp];
    v4 = v6;
  }

  return v4;
}

@end