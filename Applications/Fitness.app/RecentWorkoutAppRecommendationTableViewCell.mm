@interface RecentWorkoutAppRecommendationTableViewCell
- (_TtC10FitnessApp43RecentWorkoutAppRecommendationTableViewCell)initWithCoder:(id)coder;
- (_TtC10FitnessApp43RecentWorkoutAppRecommendationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation RecentWorkoutAppRecommendationTableViewCell

- (_TtC10FitnessApp43RecentWorkoutAppRecommendationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1002DC75C(style, identifier, v6);
}

- (_TtC10FitnessApp43RecentWorkoutAppRecommendationTableViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp43RecentWorkoutAppRecommendationTableViewCell_workoutAppRecommendationCollectionViewController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end