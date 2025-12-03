@interface TrendingDownTableViewCell
- (_TtC10FitnessApp25TrendingDownTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)selectionButtonTappedWithSender:(id)sender;
@end

@implementation TrendingDownTableViewCell

- (_TtC10FitnessApp25TrendingDownTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_10025BD90(style, identifier, v6);
}

- (void)selectionButtonTappedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10025D0D0();
}

@end