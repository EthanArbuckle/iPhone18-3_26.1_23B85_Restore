@interface HKWorkoutActivity
- (BOOL)hasChartableMetrics;
- (FIUIWorkoutActivityType)fiui_activityType;
- (HKQuantityType)distanceType;
- (double)elapsedTime;
- (double)fiui_averageCadence;
- (double)fiui_totalStepCount;
- (id)fiui_customSplits;
- (id)fiui_elevationGain;
- (id)fiui_splitsForUserPreferredDistanceUnit:(id)a3;
@end

@implementation HKWorkoutActivity

- (HKQuantityType)distanceType
{
  v2 = self;
  v3 = [(HKWorkoutActivity *)v2 workoutConfiguration];
  [(HKWorkoutConfiguration *)v3 activityType];

  v4 = _HKWorkoutDistanceTypeForActivityType();

  return v4;
}

- (double)elapsedTime
{
  v2 = self;
  v3 = sub_100656390();

  return v3;
}

- (BOOL)hasChartableMetrics
{
  v2 = self;
  v3 = [(HKWorkoutActivity *)v2 fiui_activityType];
  v4 = sub_1005D6348();

  v5 = v4[2];

  return v5 != 0;
}

- (FIUIWorkoutActivityType)fiui_activityType
{
  v2 = self;
  v3 = sub_1006565F0();

  return v3;
}

- (double)fiui_averageCadence
{
  v2 = self;
  v3 = sub_10065679C();

  return v3;
}

- (id)fiui_customSplits
{
  v2 = self;
  isa = [(HKWorkoutActivity *)v2 workoutEvents];
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
  v2 = self;
  v3 = sub_100656BE8();

  return v3;
}

- (id)fiui_splitsForUserPreferredDistanceUnit:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100656E40(v4);

  sub_1000059F8(0, &qword_1008F1810);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (double)fiui_totalStepCount
{
  v2 = self;
  sub_100656FC8();
  v4 = v3;

  return v4;
}

@end