@interface NSArray(AXMVisionEngineLookupConvenience)
- (id)axm_featureWithHighestConfidence;
@end

@implementation NSArray(AXMVisionEngineLookupConvenience)

- (id)axm_featureWithHighestConfidence
{
  v1 = [a1 axm_featuresSortedByConfidence];
  v2 = [v1 lastObject];

  return v2;
}

@end