@interface HKFeatureFlags
@end

@implementation HKFeatureFlags

uint64_t __24___HKFeatureFlags_yodel__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"YodelMarketingReviewers"];

  if (v1)
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

@end