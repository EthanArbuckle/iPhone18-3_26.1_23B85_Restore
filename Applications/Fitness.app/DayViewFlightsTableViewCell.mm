@interface DayViewFlightsTableViewCell
- (_TtC10FitnessApp27DayViewFlightsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation DayViewFlightsTableViewCell

- (_TtC10FitnessApp27DayViewFlightsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_10026BD9C(style, identifier, v6);
}

@end