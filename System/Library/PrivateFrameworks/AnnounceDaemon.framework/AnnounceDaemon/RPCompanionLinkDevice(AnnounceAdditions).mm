@interface RPCompanionLinkDevice(AnnounceAdditions)
- (BOOL)isAccessory;
- (uint64_t)supportsAnnounce;
- (unint64_t)isPairedCompanion;
@end

@implementation RPCompanionLinkDevice(AnnounceAdditions)

- (uint64_t)supportsAnnounce
{
  serviceTypes = [self serviceTypes];
  v2 = [serviceTypes containsObject:*MEMORY[0x277CEA758]];

  return v2;
}

- (BOOL)isAccessory
{
  homeKitIdentifier = [self homeKitIdentifier];
  v2 = homeKitIdentifier != 0;

  return v2;
}

- (unint64_t)isPairedCompanion
{
  if (([self statusFlags] & 0x40) != 0)
  {
    return ([self statusFlags] >> 19) & 1;
  }

  else
  {
    return 0;
  }
}

@end