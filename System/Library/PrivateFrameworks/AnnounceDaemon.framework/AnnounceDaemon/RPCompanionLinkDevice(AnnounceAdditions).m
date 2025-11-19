@interface RPCompanionLinkDevice(AnnounceAdditions)
- (BOOL)isAccessory;
- (uint64_t)supportsAnnounce;
- (unint64_t)isPairedCompanion;
@end

@implementation RPCompanionLinkDevice(AnnounceAdditions)

- (uint64_t)supportsAnnounce
{
  v1 = [a1 serviceTypes];
  v2 = [v1 containsObject:*MEMORY[0x277CEA758]];

  return v2;
}

- (BOOL)isAccessory
{
  v1 = [a1 homeKitIdentifier];
  v2 = v1 != 0;

  return v2;
}

- (unint64_t)isPairedCompanion
{
  if (([a1 statusFlags] & 0x40) != 0)
  {
    return ([a1 statusFlags] >> 19) & 1;
  }

  else
  {
    return 0;
  }
}

@end