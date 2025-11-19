@interface AEFeatureFlagsProvider
- (id)makeFeatureFlags;
@end

@implementation AEFeatureFlagsProvider

- (id)makeFeatureFlags
{
  v2 = objc_opt_new();

  return v2;
}

@end