@interface SALocalSearchNavigationEnd
- (id)_ad_transformedMapsRequest;
- (id)_ad_transformedMapsSuccessResponse;
@end

@implementation SALocalSearchNavigationEnd

- (id)_ad_transformedMapsSuccessResponse
{
  v2 = objc_alloc_init(SALocalSearchNavigationEndCompleted);

  return v2;
}

- (id)_ad_transformedMapsRequest
{
  v2 = objc_alloc_init(STStopNavigationRequest);

  return v2;
}

@end