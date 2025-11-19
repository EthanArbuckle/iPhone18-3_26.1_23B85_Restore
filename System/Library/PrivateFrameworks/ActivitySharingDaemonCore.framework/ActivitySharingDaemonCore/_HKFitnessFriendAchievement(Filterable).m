@interface _HKFitnessFriendAchievement(Filterable)
- (id)filter_description;
@end

@implementation _HKFitnessFriendAchievement(Filterable)

- (id)filter_description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 templateUniqueName];
  v4 = [a1 friendUUID];
  v5 = [a1 completedDate];
  v6 = [a1 value];
  v7 = [v2 stringWithFormat:@"_HKFitnessFriendAchievement: %@ friend: %@, completion date: %@, value: %@", v3, v4, v5, v6];

  return v7;
}

@end