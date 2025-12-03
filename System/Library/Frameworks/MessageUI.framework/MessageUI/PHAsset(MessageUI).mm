@interface PHAsset(MessageUI)
- (id)mf_localIdentifier;
@end

@implementation PHAsset(MessageUI)

- (id)mf_localIdentifier
{
  localIdentifier = [self localIdentifier];
  v2 = [localIdentifier stringByReplacingOccurrencesOfString:@"/" withString:@"-"];

  return v2;
}

@end