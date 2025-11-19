@interface BetaAppFeedbackMetadataMemoryEntity
+ (id)defaultProperties;
@end

@implementation BetaAppFeedbackMetadataMemoryEntity

+ (id)defaultProperties
{
  v4[0] = @"bundle_id";
  v4[1] = @"bundle_version";
  v4[2] = @"email";
  v4[3] = @"platform";
  v4[4] = @"bundle_short_version";
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

@end