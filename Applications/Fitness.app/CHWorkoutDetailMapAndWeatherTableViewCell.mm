@interface CHWorkoutDetailMapAndWeatherTableViewCell
- (CHWorkoutDetailAnalyticsHandler)analyticsHandler;
- (CHWorkoutDetailMapAndWeatherTableViewCell)initWithCoder:(id)a3;
- (CHWorkoutDetailMapAndWeatherTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CHWorkoutDetailNavigationDelegate)navigationDelegate;
- (void)configureWithWorkout:(id)a3 workoutActivity:(id)a4 dataCalculator:(id)a5 formattingManager:(id)a6 parent:(id)a7 locationReadings:(id)a8;
@end

@implementation CHWorkoutDetailMapAndWeatherTableViewCell

- (CHWorkoutDetailNavigationDelegate)navigationDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CHWorkoutDetailAnalyticsHandler)analyticsHandler
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CHWorkoutDetailMapAndWeatherTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100522634(a3, a4, v6);
}

- (CHWorkoutDetailMapAndWeatherTableViewCell)initWithCoder:(id)a3
{
  *(self + OBJC_IVAR___CHWorkoutDetailMapAndWeatherTableViewCell_mapAndWeatherViewModel) = 0;
  *(self + OBJC_IVAR___CHWorkoutDetailMapAndWeatherTableViewCell_snapshotGenerator) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)configureWithWorkout:(id)a3 workoutActivity:(id)a4 dataCalculator:(id)a5 formattingManager:(id)a6 parent:(id)a7 locationReadings:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = self;
  sub_100523720(v14, a4, v17, v19);
}

@end