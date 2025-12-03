@interface StackDetailHeaderCell
- (_TtC10FitnessApp21StackDetailHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)navigateToPlaylist;
@end

@implementation StackDetailHeaderCell

- (_TtC10FitnessApp21StackDetailHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100305B44(style, identifier, v6);
}

- (void)navigateToPlaylist
{
  selfCopy = self;
  sub_1003068E4();
}

@end