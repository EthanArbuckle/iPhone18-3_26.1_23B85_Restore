@interface RPCompanionLinkClient(AnnounceAdditions)
- (id)activeAccessoryDevicesSupportingAnnounce;
- (id)activeDevicesSupportingAnnounce;
- (id)activePersonalDevicesSupportingAnnounce;
- (id)pairedCompanion;
@end

@implementation RPCompanionLinkClient(AnnounceAdditions)

- (id)activeAccessoryDevicesSupportingAnnounce
{
  activeDevices = [self activeDevices];
  activeAccessoryDevicesSupportingAnnounce = [activeDevices activeAccessoryDevicesSupportingAnnounce];

  return activeAccessoryDevicesSupportingAnnounce;
}

- (id)activeDevicesSupportingAnnounce
{
  activeDevices = [self activeDevices];
  activeDevicesSupportingAnnounce = [activeDevices activeDevicesSupportingAnnounce];

  return activeDevicesSupportingAnnounce;
}

- (id)activePersonalDevicesSupportingAnnounce
{
  activeDevices = [self activeDevices];
  activePersonalDevicesSupportingAnnounce = [activeDevices activePersonalDevicesSupportingAnnounce];

  return activePersonalDevicesSupportingAnnounce;
}

- (id)pairedCompanion
{
  activeDevices = [self activeDevices];
  pairedCompanion = [activeDevices pairedCompanion];

  return pairedCompanion;
}

@end