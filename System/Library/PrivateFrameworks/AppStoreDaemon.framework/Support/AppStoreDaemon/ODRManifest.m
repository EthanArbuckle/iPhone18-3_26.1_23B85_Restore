@interface ODRManifest
+ (id)defaultProperties;
@end

@implementation ODRManifest

+ (id)defaultProperties
{
  v4[0] = @"bundle_id";
  v4[1] = @"evid";
  v4[2] = @"is_store_based";
  v4[3] = @"item_id";
  v4[4] = @"last_modification_date";
  v4[5] = @"local_cache_allowed";
  v4[6] = @"thinning_variant";
  v4[7] = @"storage_id";
  v4[8] = @"version";
  v2 = [NSArray arrayWithObjects:v4 count:9];

  return v2;
}

@end