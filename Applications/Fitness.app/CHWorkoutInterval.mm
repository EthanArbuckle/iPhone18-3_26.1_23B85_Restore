@interface CHWorkoutInterval
- (id)description;
@end

@implementation CHWorkoutInterval

- (id)description
{
  v15.receiver = self;
  v15.super_class = CHWorkoutInterval;
  v3 = [(CHWorkoutSegment *)&v15 description];
  [(CHWorkoutSegment *)self elapsedTime];
  v5 = [NSNumber numberWithDouble:v4 / 60.0];
  v6 = [(CHWorkoutSegment *)self startDate];
  v7 = [(CHWorkoutSegment *)self endDate];
  v8 = +[HKUnit kilocalorieUnit];
  v9 = [(CHWorkoutSegment *)self formattedActiveEnergyValueForUnit:v8];
  v10 = +[HKUnit mileUnit];
  v11 = [(CHWorkoutSegment *)self formattedDistanceValueForUnit:v10];
  v12 = [(CHWorkoutInterval *)self stepKeyPath];
  v13 = [NSString stringWithFormat:@"(INTERVAL) %@: Duration: %@ min (%@ - %@) Energy: %@; Distance: %@; KeyPath: %@; Success: %i", v3, v5, v6, v7, v9, v11, v12, [(CHWorkoutInterval *)self wasSuccessful]];;

  return v13;
}

@end