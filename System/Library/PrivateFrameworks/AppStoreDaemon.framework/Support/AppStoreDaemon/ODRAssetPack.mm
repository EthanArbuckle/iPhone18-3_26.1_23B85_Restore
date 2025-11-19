@interface ODRAssetPack
+ (id)defaultProperties;
- (id)description;
@end

@implementation ODRAssetPack

+ (id)defaultProperties
{
  v4[0] = @"bundle_key";
  v4[1] = @"bundle_id";
  v4[2] = @"chunk_size";
  v4[3] = @"download_identifier";
  v4[4] = @"download_priority";
  v4[5] = @"download_request_uuids";
  v4[6] = @"effective_always_preserve";
  v4[7] = @"effective_preservation_priority";
  v4[8] = @"file_size";
  v4[9] = @"hash_array";
  v4[10] = @"known_content_hashes";
  v4[11] = @"last_used_date";
  v4[12] = @"local_url";
  v4[13] = @"md5";
  v4[14] = @"pin_count";
  v4[15] = @"primary_content_hash";
  v4[16] = @"purgeable";
  v4[17] = @"purge_reason";
  v4[18] = @"sha";
  v4[19] = @"streamable";
  v4[20] = @"source_url";
  v4[21] = @"uncompressed_size";
  v2 = [NSArray arrayWithObjects:v4 count:22];

  return v2;
}

- (id)description
{
  v3 = sub_100269134(self);
  v4 = sub_1002690FC(self);
  v5 = [NSString stringWithFormat:@"Bundle Key: %@ Bundle ID: %@", v3, v4];

  return v5;
}

@end