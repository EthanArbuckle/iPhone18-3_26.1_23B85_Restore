@interface CHWorkoutDownhillRun
- (CHWorkoutDownhillRun)init;
- (CHWorkoutDownhillRun)initWithDownhillRun:(id)a3;
- (HKQuantity)alpineSlope;
- (HKQuantity)averageHeartRate;
- (HKQuantity)averageSpeed;
- (HKQuantity)distance;
- (HKQuantity)elevationAscended;
- (HKQuantity)elevationDescended;
- (HKQuantity)maximumSpeed;
- (NSString)description;
- (double)workoutTime;
@end

@implementation CHWorkoutDownhillRun

- (double)workoutTime
{
  v2 = self;
  dispatch thunk of DownhillRun.workoutTime.getter();
  v4 = v3;

  return v4;
}

- (HKQuantity)averageSpeed
{
  v2 = self;
  v3 = DownhillRun.averageSpeed.getter();

  return v3;
}

- (HKQuantity)maximumSpeed
{
  v2 = self;
  v3 = DownhillRun.maximumSpeed.getter();

  return v3;
}

- (HKQuantity)alpineSlope
{
  v2 = self;
  v3 = DownhillRun.alpineSlope.getter();

  return v3;
}

- (HKQuantity)elevationAscended
{
  v2 = self;
  v3 = DownhillRun.elevationAscended.getter();

  return v3;
}

- (HKQuantity)elevationDescended
{
  v2 = self;
  v3 = DownhillRun.elevationDescended.getter();

  return v3;
}

- (HKQuantity)distance
{
  v2 = self;
  v3 = dispatch thunk of DownhillRun.distance.getter();

  return v3;
}

- (HKQuantity)averageHeartRate
{
  v2 = self;
  v3 = dispatch thunk of DownhillRun.averageHeartRate.getter();

  return v3;
}

- (CHWorkoutDownhillRun)initWithDownhillRun:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___CHWorkoutDownhillRun_downhillRun) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for DownhillRunBridge();
  v4 = a3;
  return [(CHWorkoutDownhillRun *)&v6 init];
}

- (NSString)description
{
  v2 = [*(&self->super.isa + OBJC_IVAR___CHWorkoutDownhillRun_downhillRun) description];

  return v2;
}

- (CHWorkoutDownhillRun)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end