@interface RecentWorkoutAppRecommendationTableViewCell
- (_TtC10FitnessApp43RecentWorkoutAppRecommendationTableViewCell)initWithCoder:(id)a3;
- (_TtC10FitnessApp43RecentWorkoutAppRecommendationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation RecentWorkoutAppRecommendationTableViewCell

- (_TtC10FitnessApp43RecentWorkoutAppRecommendationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_1002DC75C(a3, a4, v6);
}

- (_TtC10FitnessApp43RecentWorkoutAppRecommendationTableViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp43RecentWorkoutAppRecommendationTableViewCell_workoutAppRecommendationCollectionViewController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end