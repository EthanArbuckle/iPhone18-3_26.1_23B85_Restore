@interface ODRAssetDownload
+ (id)defaultProperties;
@end

@implementation ODRAssetDownload

+ (id)defaultProperties
{
  v4[0] = @"bundle_id";
  v4[1] = @"bundle_key";
  v4[2] = @"coordinator_id";
  v4[3] = @"is_paused";
  v4[4] = @"source_url";
  v4[5] = @"type";
  v4[6] = @"unique_key";
  v2 = [NSArray arrayWithObjects:v4 count:7];

  return v2;
}

@end