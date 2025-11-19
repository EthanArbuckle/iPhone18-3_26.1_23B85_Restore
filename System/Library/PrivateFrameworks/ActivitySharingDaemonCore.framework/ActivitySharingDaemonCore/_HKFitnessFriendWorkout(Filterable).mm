@interface _HKFitnessFriendWorkout(Filterable)
- (id)filter_description;
@end

@implementation _HKFitnessFriendWorkout(Filterable)

- (id)filter_description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 UUID];
  v4 = [a1 workoutActivityType];
  [a1 duration];
  v6 = [v2 stringWithFormat:@"_HKFitnessFriendWorkout: %@, type: %ld, duration: %f, watch workout: %d", v3, v4, v5, objc_msgSend(a1, "isWatchWorkout")];

  return v6;
}

@end