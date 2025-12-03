@interface IDSDevice(AnnounceAdditions)
- (uint64_t)isHomePod;
@end

@implementation IDSDevice(AnnounceAdditions)

- (uint64_t)isHomePod
{
  modelIdentifier = [self modelIdentifier];
  v2 = [modelIdentifier containsString:@"AudioAccessory"];

  return v2;
}

@end