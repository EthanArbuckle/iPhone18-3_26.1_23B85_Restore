@interface RPCompanionLinkClient(AnnounceAdditions)
- (id)activeAccessoryDevicesSupportingAnnounce;
- (id)activeDevicesSupportingAnnounce;
- (id)activePersonalDevicesSupportingAnnounce;
- (id)pairedCompanion;
@end

@implementation RPCompanionLinkClient(AnnounceAdditions)

- (id)activeAccessoryDevicesSupportingAnnounce
{
  v1 = [a1 activeDevices];
  v2 = [v1 activeAccessoryDevicesSupportingAnnounce];

  return v2;
}

- (id)activeDevicesSupportingAnnounce
{
  v1 = [a1 activeDevices];
  v2 = [v1 activeDevicesSupportingAnnounce];

  return v2;
}

- (id)activePersonalDevicesSupportingAnnounce
{
  v1 = [a1 activeDevices];
  v2 = [v1 activePersonalDevicesSupportingAnnounce];

  return v2;
}

- (id)pairedCompanion
{
  v1 = [a1 activeDevices];
  v2 = [v1 pairedCompanion];

  return v2;
}

@end