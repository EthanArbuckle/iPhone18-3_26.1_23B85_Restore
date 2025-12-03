@interface ANAnnouncement(Accessory)
- (uint64_t)isAnnouncerInSameRoomAsAccessory:()Accessory;
@end

@implementation ANAnnouncement(Accessory)

- (uint64_t)isAnnouncerInSameRoomAsAccessory:()Accessory
{
  v4 = a3;
  announcer = [self announcer];
  isAccessory = [announcer isAccessory];

  if (isAccessory)
  {
    v7 = +[ANHomeManager shared];
    location = [self location];
    homeUUID = [location homeUUID];
    v10 = [v7 homeForID:homeUUID];

    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    announcer2 = [self announcer];
    homeKitID = [announcer2 homeKitID];
    v14 = [v11 initWithUUIDString:homeKitID];

    v15 = [v10 accessoryWithUniqueIdentifier:v14];
    v16 = v15;
    if (v15)
    {
      room = [v15 room];
      uniqueIdentifier = [room uniqueIdentifier];
      room2 = [v4 room];
      uniqueIdentifier2 = [room2 uniqueIdentifier];
      v21 = [uniqueIdentifier isEqual:uniqueIdentifier2];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end