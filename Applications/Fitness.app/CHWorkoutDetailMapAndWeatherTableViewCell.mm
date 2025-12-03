@interface CHWorkoutDetailMapAndWeatherTableViewCell
- (CHWorkoutDetailAnalyticsHandler)analyticsHandler;
- (CHWorkoutDetailMapAndWeatherTableViewCell)initWithCoder:(id)coder;
- (CHWorkoutDetailMapAndWeatherTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CHWorkoutDetailNavigationDelegate)navigationDelegate;
- (void)configureWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator formattingManager:(id)manager parent:(id)parent locationReadings:(id)readings;
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

- (CHWorkoutDetailMapAndWeatherTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100522634(style, identifier, v6);
}

- (CHWorkoutDetailMapAndWeatherTableViewCell)initWithCoder:(id)coder
{
  *(self + OBJC_IVAR___CHWorkoutDetailMapAndWeatherTableViewCell_mapAndWeatherViewModel) = 0;
  *(self + OBJC_IVAR___CHWorkoutDetailMapAndWeatherTableViewCell_snapshotGenerator) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)configureWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator formattingManager:(id)manager parent:(id)parent locationReadings:(id)readings
{
  workoutCopy = workout;
  activityCopy = activity;
  calculatorCopy = calculator;
  managerCopy = manager;
  parentCopy = parent;
  readingsCopy = readings;
  selfCopy = self;
  sub_100523720(workoutCopy, activity, managerCopy, readingsCopy);
}

@end