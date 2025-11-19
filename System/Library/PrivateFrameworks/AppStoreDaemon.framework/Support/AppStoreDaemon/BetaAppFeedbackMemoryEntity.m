@interface BetaAppFeedbackMemoryEntity
+ (id)defaultProperties;
@end

@implementation BetaAppFeedbackMemoryEntity

+ (id)defaultProperties
{
  v4[0] = @"account_dsid";
  v4[1] = @"attempt_count";
  v4[2] = @"app_version";
  v4[3] = @"beta_build_group_id";
  v4[4] = @"feedback";
  v4[5] = @"successful_image_uploads";
  v4[6] = @"is_app_clip";
  v4[7] = @"log_key";
  v4[8] = @"next_retry_date";
  v4[9] = @"pending_image_uploads";
  v4[10] = @"state";
  v4[11] = @"item_id";
  v2 = [NSArray arrayWithObjects:v4 count:12];

  return v2;
}

@end