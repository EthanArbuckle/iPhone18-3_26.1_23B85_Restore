@interface MindfulnessSessionDetailHeaderCell
- (_TtC10FitnessApp34MindfulnessSessionDetailHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)navigateToCatalogItem;
@end

@implementation MindfulnessSessionDetailHeaderCell

- (_TtC10FitnessApp34MindfulnessSessionDetailHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_100637C30(a3, a4, v6);
}

- (void)navigateToCatalogItem
{
  v2 = self;
  sub_1006390C0();
}

@end