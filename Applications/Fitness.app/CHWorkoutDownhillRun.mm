@interface CHWorkoutDownhillRun
- (CHWorkoutDownhillRun)init;
- (CHWorkoutDownhillRun)initWithDownhillRun:(id)run;
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
  selfCopy = self;
  dispatch thunk of DownhillRun.workoutTime.getter();
  v4 = v3;

  return v4;
}

- (HKQuantity)averageSpeed
{
  selfCopy = self;
  v3 = DownhillRun.averageSpeed.getter();

  return v3;
}

- (HKQuantity)maximumSpeed
{
  selfCopy = self;
  v3 = DownhillRun.maximumSpeed.getter();

  return v3;
}

- (HKQuantity)alpineSlope
{
  selfCopy = self;
  v3 = DownhillRun.alpineSlope.getter();

  return v3;
}

- (HKQuantity)elevationAscended
{
  selfCopy = self;
  v3 = DownhillRun.elevationAscended.getter();

  return v3;
}

- (HKQuantity)elevationDescended
{
  selfCopy = self;
  v3 = DownhillRun.elevationDescended.getter();

  return v3;
}

- (HKQuantity)distance
{
  selfCopy = self;
  v3 = dispatch thunk of DownhillRun.distance.getter();

  return v3;
}

- (HKQuantity)averageHeartRate
{
  selfCopy = self;
  v3 = dispatch thunk of DownhillRun.averageHeartRate.getter();

  return v3;
}

- (CHWorkoutDownhillRun)initWithDownhillRun:(id)run
{
  *(&self->super.isa + OBJC_IVAR___CHWorkoutDownhillRun_downhillRun) = run;
  v6.receiver = self;
  v6.super_class = type metadata accessor for DownhillRunBridge();
  runCopy = run;
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