@interface CHWorkoutDownhillRunsStats
- (CHWorkoutDownhillRunsStats)init;
- (CHWorkoutDownhillRunsStats)initWithDownhillRunBridges:(id)a3;
- (CHWorkoutDownhillRunsStats)initWithDownhillRuns:(id)a3;
- (HKQuantity)averageHeartRate;
- (HKQuantity)averageSpeed;
- (HKQuantity)distance;
- (HKQuantity)elevationAscended;
- (HKQuantity)elevationDescended;
- (HKQuantity)maximumSpeed;
- (double)duration;
- (int64_t)runsCount;
@end

@implementation CHWorkoutDownhillRunsStats

- (HKQuantity)maximumSpeed
{
  v2 = self;
  v3 = DownhillRunsStats.maximumSpeed.getter();

  return v3;
}

- (HKQuantity)elevationAscended
{
  v2 = self;
  v3 = DownhillRunsStats.elevationAscended.getter();

  return v3;
}

- (HKQuantity)elevationDescended
{
  v2 = self;
  v3 = DownhillRunsStats.elevationDescended.getter();

  return v3;
}

- (int64_t)runsCount
{
  v2 = self;
  v3 = DownhillRunsStats.runsCount.getter();

  return v3;
}

- (HKQuantity)averageHeartRate
{
  v2 = self;
  v3 = DownhillRunsStats.averageHeartRate.getter();

  return v3;
}

- (HKQuantity)averageSpeed
{
  v2 = self;
  v3 = DownhillRunsStats.averageSpeed.getter();

  return v3;
}

- (HKQuantity)distance
{
  v2 = self;
  v3 = DownhillRunsStats.distance.getter();

  return v3;
}

- (double)duration
{
  v2 = self;
  DownhillRunsStats.duration.getter();
  v4 = v3;

  return v4;
}

- (CHWorkoutDownhillRunsStats)initWithDownhillRuns:(id)a3
{
  type metadata accessor for DownhillRun();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for DownhillRunsStats();
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR___CHWorkoutDownhillRunsStats_downhillRunsStats) = DownhillRunsStats.init(downhillRuns:)();
  v5.receiver = self;
  v5.super_class = type metadata accessor for DownhillRunsStatsBridge();
  return [(CHWorkoutDownhillRunsStats *)&v5 init];
}

- (CHWorkoutDownhillRunsStats)initWithDownhillRunBridges:(id)a3
{
  type metadata accessor for DownhillRunBridge();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1002DCC50(v3);
}

- (CHWorkoutDownhillRunsStats)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end