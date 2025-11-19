@interface FriendTimeZonesFromNewActivitySnapshots
@end

@implementation FriendTimeZonesFromNewActivitySnapshots

uint64_t ___FriendTimeZonesFromNewActivitySnapshots_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 friendUUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

@end