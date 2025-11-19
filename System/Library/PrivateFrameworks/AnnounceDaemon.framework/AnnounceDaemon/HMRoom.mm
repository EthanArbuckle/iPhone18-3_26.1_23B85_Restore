@interface HMRoom
@end

@implementation HMRoom

BOOL __61__HMRoom_Announce__an_roomsWithAnnounceAccessoriesFromRooms___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1650];
  v3 = [a2 accessories];
  v4 = [v2 announceAccessoriesFromAccessories:v3];
  v5 = [v4 count] != 0;

  return v5;
}

@end