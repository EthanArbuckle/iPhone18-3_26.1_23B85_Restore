@interface AVPlayerItem(AVAirMessage)
- (id)avkitACMIdentifier;
@end

@implementation AVPlayerItem(AVAirMessage)

- (id)avkitACMIdentifier
{
  asset = [self asset];
  if (objc_opt_respondsToSelector())
  {
    v2 = [asset URL];
    absoluteString = [v2 absoluteString];
  }

  else
  {
    absoluteString = 0;
  }

  return absoluteString;
}

@end