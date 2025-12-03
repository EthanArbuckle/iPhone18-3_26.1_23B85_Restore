@interface SALCMShowChannel
- (id)_ad_OTTRequestRepresentation;
@end

@implementation SALCMShowChannel

- (id)_ad_OTTRequestRepresentation
{
  channel = [(SALCMShowChannel *)self channel];
  ad_OTTModelRepresentation = [channel ad_OTTModelRepresentation];

  if (ad_OTTModelRepresentation)
  {
    v4 = [[STShowChannelRequest alloc] _initWithChannel:ad_OTTModelRepresentation];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end