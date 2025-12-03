@interface TodayActivityTile
- (_TtC10FitnessApp17TodayActivityTile)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TodayActivityTile

- (_TtC10FitnessApp17TodayActivityTile)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1001B5084(style, identifier, v6);
}

@end