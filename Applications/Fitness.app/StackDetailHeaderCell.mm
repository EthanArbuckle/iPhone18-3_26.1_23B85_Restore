@interface StackDetailHeaderCell
- (_TtC10FitnessApp21StackDetailHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)navigateToPlaylist;
@end

@implementation StackDetailHeaderCell

- (_TtC10FitnessApp21StackDetailHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_100305B44(a3, a4, v6);
}

- (void)navigateToPlaylist
{
  v2 = self;
  sub_1003068E4();
}

@end