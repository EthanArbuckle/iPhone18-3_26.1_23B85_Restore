@interface MindfulnessSessionDetailHeaderCell
- (_TtC10FitnessApp34MindfulnessSessionDetailHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)navigateToCatalogItem;
@end

@implementation MindfulnessSessionDetailHeaderCell

- (_TtC10FitnessApp34MindfulnessSessionDetailHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100637C30(style, identifier, v6);
}

- (void)navigateToCatalogItem
{
  selfCopy = self;
  sub_1006390C0();
}

@end