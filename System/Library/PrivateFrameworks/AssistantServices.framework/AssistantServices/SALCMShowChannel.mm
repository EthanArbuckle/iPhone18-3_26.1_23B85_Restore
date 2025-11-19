@interface SALCMShowChannel
- (id)_ad_OTTRequestRepresentation;
@end

@implementation SALCMShowChannel

- (id)_ad_OTTRequestRepresentation
{
  v2 = [(SALCMShowChannel *)self channel];
  v3 = [v2 ad_OTTModelRepresentation];

  if (v3)
  {
    v4 = [[STShowChannelRequest alloc] _initWithChannel:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end