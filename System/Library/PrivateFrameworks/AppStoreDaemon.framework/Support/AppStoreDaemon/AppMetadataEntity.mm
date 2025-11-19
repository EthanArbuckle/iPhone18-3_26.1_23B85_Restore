@interface AppMetadataEntity
+ (id)defaultProperties;
@end

@implementation AppMetadataEntity

+ (id)defaultProperties
{
  v4[0] = @"app_platform";
  v4[1] = @"bundle_id";
  v4[2] = @"bundle_version";
  v4[3] = @"cohort";
  v4[4] = @"device_vendor_id";
  v4[5] = @"evid";
  v4[6] = @"is_arcade";
  v4[7] = @"is_beta";
  v4[8] = @"is_clip";
  v4[9] = @"is_prior";
  v4[10] = @"is_system_app";
  v4[11] = @"item_id";
  v4[12] = @"item_name";
  v4[13] = @"short_version";
  v4[14] = @"storefront";
  v4[15] = @"timestamp";
  v4[16] = @"vendor_name";
  v2 = [NSArray arrayWithObjects:v4 count:17];

  return v2;
}

@end