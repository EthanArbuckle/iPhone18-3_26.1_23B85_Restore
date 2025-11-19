@interface SALocalSearchNavigationPromptManeuver
- (id)_ad_transformedMapsRequest;
- (id)_ad_transformedMapsSuccessResponse;
@end

@implementation SALocalSearchNavigationPromptManeuver

- (id)_ad_transformedMapsSuccessResponse
{
  v2 = objc_alloc_init(SALocalSearchNavigationPromptManeuverCompleted);

  return v2;
}

- (id)_ad_transformedMapsRequest
{
  v2 = objc_alloc_init(STPromptManeuverRequest);

  return v2;
}

@end