@interface LaunchEventEntity
+ (id)defaultProperties;
@end

@implementation LaunchEventEntity

+ (id)defaultProperties
{
  v4[0] = @"bundle_id";
  v4[1] = @"containing_bundle_id";
  v4[2] = @"event_source";
  v4[3] = @"is_extension";
  v4[4] = @"launch_end_time";
  v4[5] = @"launch_start_time";
  v4[6] = @"timestamp";
  v2 = [NSArray arrayWithObjects:v4 count:7];

  return v2;
}

@end