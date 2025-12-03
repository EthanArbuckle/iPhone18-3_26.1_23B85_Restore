@interface NSArray(AXMVisionEngineLookupConvenience)
- (id)axm_featureWithHighestConfidence;
@end

@implementation NSArray(AXMVisionEngineLookupConvenience)

- (id)axm_featureWithHighestConfidence
{
  axm_featuresSortedByConfidence = [self axm_featuresSortedByConfidence];
  lastObject = [axm_featuresSortedByConfidence lastObject];

  return lastObject;
}

@end