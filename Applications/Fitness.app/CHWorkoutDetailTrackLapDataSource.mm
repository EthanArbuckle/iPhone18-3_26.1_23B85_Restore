@interface CHWorkoutDetailTrackLapDataSource
- (CHWorkoutDetailTrackLapDataSource)initWithWorkout:(id)a3 dataCalculator:(id)a4 formattingManager:(id)a5;
- (CHWorkoutDetailTrackLapDataSource)initWithWorkout:(id)a3 dataCalculator:(id)a4 trackDistanceUnit:(unint64_t)a5 formattingManager:(id)a6;
@end

@implementation CHWorkoutDetailTrackLapDataSource

- (CHWorkoutDetailTrackLapDataSource)initWithWorkout:(id)a3 dataCalculator:(id)a4 trackDistanceUnit:(unint64_t)a5 formattingManager:(id)a6
{
  *(&self->super.super.isa + OBJC_IVAR___CHWorkoutDetailTrackLapDataSource_distanceUnit) = 1;
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = sub_10030B238(v9, v10, a5, v11);

  return v12;
}

- (CHWorkoutDetailTrackLapDataSource)initWithWorkout:(id)a3 dataCalculator:(id)a4 formattingManager:(id)a5
{
  *(&self->super.super.isa + OBJC_IVAR___CHWorkoutDetailTrackLapDataSource_distanceUnit) = 1;
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_10030B74C(v7, v8, v9);

  return v10;
}

@end