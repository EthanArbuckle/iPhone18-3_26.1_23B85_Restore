@interface MPModelForYouRecommendationGroupKind
+ (id)identityKind;
@end

@implementation MPModelForYouRecommendationGroupKind

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

@end