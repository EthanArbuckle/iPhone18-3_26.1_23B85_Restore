@interface CHMindfulnessSessionListTableViewCell
- (CHMindfulnessSessionListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation CHMindfulnessSessionListTableViewCell

- (CHMindfulnessSessionListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1004D5244(style, identifier, v6);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1004D791C();
}

@end