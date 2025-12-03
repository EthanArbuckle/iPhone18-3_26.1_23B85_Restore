@interface TrendPairTableViewCell
- (_TtC10FitnessApp22TrendPairTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)selectionButtonTappedWithSender:(id)sender;
@end

@implementation TrendPairTableViewCell

- (_TtC10FitnessApp22TrendPairTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100594180(style, identifier, v6);
}

- (void)selectionButtonTappedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1005946CC();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1005954B0();
}

@end