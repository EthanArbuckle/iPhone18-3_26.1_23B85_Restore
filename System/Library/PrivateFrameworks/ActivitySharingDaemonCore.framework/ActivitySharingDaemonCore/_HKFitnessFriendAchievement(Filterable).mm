@interface _HKFitnessFriendAchievement(Filterable)
- (id)filter_description;
@end

@implementation _HKFitnessFriendAchievement(Filterable)

- (id)filter_description
{
  v2 = MEMORY[0x277CCACA8];
  templateUniqueName = [self templateUniqueName];
  friendUUID = [self friendUUID];
  completedDate = [self completedDate];
  value = [self value];
  v7 = [v2 stringWithFormat:@"_HKFitnessFriendAchievement: %@ friend: %@, completion date: %@, value: %@", templateUniqueName, friendUUID, completedDate, value];

  return v7;
}

@end