@interface FMRecipientTableViewCell
- (_TtC6FindMy24FMRecipientTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation FMRecipientTableViewCell

- (_TtC6FindMy24FMRecipientTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1004899B4(style, identifier, v6);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10048A510();
}

@end