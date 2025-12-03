@interface BaseLineHistoryCell
- (_TtC7Measure19BaseLineHistoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation BaseLineHistoryCell

- (_TtC7Measure19BaseLineHistoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_10006E584(style, identifier, v6);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10006E864();
}

@end