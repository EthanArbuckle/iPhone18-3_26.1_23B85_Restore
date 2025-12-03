@interface _HKFitnessFriendWorkout(Filterable)
- (id)filter_description;
@end

@implementation _HKFitnessFriendWorkout(Filterable)

- (id)filter_description
{
  v2 = MEMORY[0x277CCACA8];
  uUID = [self UUID];
  workoutActivityType = [self workoutActivityType];
  [self duration];
  v6 = [v2 stringWithFormat:@"_HKFitnessFriendWorkout: %@, type: %ld, duration: %f, watch workout: %d", uUID, workoutActivityType, v5, objc_msgSend(self, "isWatchWorkout")];

  return v6;
}

@end