@interface TrendPairTableViewCell
- (_TtC10FitnessApp22TrendPairTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
- (void)selectionButtonTappedWithSender:(id)a3;
@end

@implementation TrendPairTableViewCell

- (_TtC10FitnessApp22TrendPairTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_100594180(a3, a4, v6);
}

- (void)selectionButtonTappedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005946CC();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1005954B0();
}

@end