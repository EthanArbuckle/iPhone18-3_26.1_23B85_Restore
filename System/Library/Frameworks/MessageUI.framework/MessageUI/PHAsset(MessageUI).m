@interface PHAsset(MessageUI)
- (id)mf_localIdentifier;
@end

@implementation PHAsset(MessageUI)

- (id)mf_localIdentifier
{
  v1 = [a1 localIdentifier];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"/" withString:@"-"];

  return v2;
}

@end