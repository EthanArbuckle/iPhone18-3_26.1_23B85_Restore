@interface AVPlayerItem(AVAirMessage)
- (id)avkitACMIdentifier;
@end

@implementation AVPlayerItem(AVAirMessage)

- (id)avkitACMIdentifier
{
  v1 = [a1 asset];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 URL];
    v3 = [v2 absoluteString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end