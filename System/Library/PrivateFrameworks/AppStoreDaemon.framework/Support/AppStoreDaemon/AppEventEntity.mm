@interface AppEventEntity
+ (id)defaultProperties;
@end

@implementation AppEventEntity

+ (id)defaultProperties
{
  v4[0] = @"account_id";
  v4[1] = @"app_platform";
  v4[2] = @"bundle_id";
  v4[3] = @"bundle_version";
  v4[4] = @"cohort";
  v4[5] = @"count";
  v4[6] = @"cumulative_user_count";
  v4[7] = @"device_vendor_id";
  v4[8] = @"device_vendor_id_repaired";
  v4[9] = @"event_type";
  v4[10] = @"event_subtype";
  v4[11] = @"evid";
  v4[12] = @"has_been_posted";
  v4[13] = @"is_clip";
  v4[14] = @"is_beta";
  v4[15] = @"is_system_app";
  v4[16] = @"is_temporary";
  v4[17] = @"item_id";
  v4[18] = @"item_name";
  v4[19] = @"launch_time";
  v4[20] = @"launch_end_time";
  v4[21] = @"week_start_time";
  v4[22] = @"short_version";
  v4[23] = @"storefront";
  v4[24] = @"timestamp";
  v4[25] = @"usage_time";
  v2 = [NSArray arrayWithObjects:v4 count:26];

  return v2;
}

@end