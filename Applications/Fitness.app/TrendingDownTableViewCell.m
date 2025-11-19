@interface TrendingDownTableViewCell
- (_TtC10FitnessApp25TrendingDownTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)selectionButtonTappedWithSender:(id)a3;
@end

@implementation TrendingDownTableViewCell

- (_TtC10FitnessApp25TrendingDownTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_10025BD90(a3, a4, v6);
}

- (void)selectionButtonTappedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10025D0D0();
}

@end