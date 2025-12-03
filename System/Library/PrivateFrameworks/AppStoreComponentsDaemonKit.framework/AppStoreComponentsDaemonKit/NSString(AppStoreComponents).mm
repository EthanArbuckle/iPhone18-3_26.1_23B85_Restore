@interface NSString(AppStoreComponents)
- (id)asc_sha246Hash;
- (id)asc_sha246HashData;
- (id)collapsingNewlines;
@end

@implementation NSString(AppStoreComponents)

- (id)asc_sha246HashData
{
  v1 = [self dataUsingEncoding:1];
  v2 = [MEMORY[0x277CBEB28] dataWithLength:32];
  CC_SHA256([v1 bytes], objc_msgSend(v1, "length"), objc_msgSend(v2, "mutableBytes"));

  return v2;
}

- (id)asc_sha246Hash
{
  asc_sha246HashData = [self asc_sha246HashData];
  v2 = [asc_sha246HashData base64EncodedStringWithOptions:0];

  return v2;
}

- (id)collapsingNewlines
{
  v1 = [MEMORY[0x277CCAB68] stringWithString:self];
  [v1 replaceOccurrencesOfString:@"([\\v]+)" withString:@"\n" options:1024 range:{0, objc_msgSend(v1, "length")}];
  v2 = [v1 copy];

  return v2;
}

@end