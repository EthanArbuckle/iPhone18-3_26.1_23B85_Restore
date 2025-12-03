@interface HKWorkoutActivity
- (BOOL)hasChartableMetrics;
- (FIUIWorkoutActivityType)fiui_activityType;
- (HKQuantityType)distanceType;
- (double)elapsedTime;
- (double)fiui_averageCadence;
- (double)fiui_totalStepCount;
- (id)fiui_customSplits;
- (id)fiui_elevationGain;
- (id)fiui_splitsForUserPreferredDistanceUnit:(id)unit;
@end

@implementation HKWorkoutActivity

- (HKQuantityType)distanceType
{
  selfCopy = self;
  workoutConfiguration = [(HKWorkoutActivity *)selfCopy workoutConfiguration];
  [(HKWorkoutConfiguration *)workoutConfiguration activityType];

  v4 = _HKWorkoutDistanceTypeForActivityType();

  return v4;
}

- (double)elapsedTime
{
  selfCopy = self;
  v3 = sub_100656390();

  return v3;
}

- (BOOL)hasChartableMetrics
{
  selfCopy = self;
  fiui_activityType = [(HKWorkoutActivity *)selfCopy fiui_activityType];
  v4 = sub_1005D6348();

  v5 = v4[2];

  return v5 != 0;
}

- (FIUIWorkoutActivityType)fiui_activityType
{
  selfCopy = self;
  v3 = sub_1006565F0();

  return v3;
}

- (double)fiui_averageCadence
{
  selfCopy = self;
  v3 = sub_10065679C();

  return v3;
}

- (id)fiui_customSplits
{
  selfCopy = self;
  isa = [(HKWorkoutActivity *)selfCopy workoutEvents];
  if (!isa)
  {
    sub_1000059F8(0, &qword_1008DC000);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v4 = FICustomSplits();

  sub_1000059F8(0, &qword_1008DC000);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10065755C(v5);

  sub_1000059F8(0, &qword_1008F1810);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)fiui_elevationGain
{
  selfCopy = self;
  v3 = sub_100656BE8();

  return v3;
}

- (id)fiui_splitsForUserPreferredDistanceUnit:(id)unit
{
  unitCopy = unit;
  selfCopy = self;
  sub_100656E40(unitCopy);

  sub_1000059F8(0, &qword_1008F1810);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (double)fiui_totalStepCount
{
  selfCopy = self;
  sub_100656FC8();
  v4 = v3;

  return v4;
}

@end