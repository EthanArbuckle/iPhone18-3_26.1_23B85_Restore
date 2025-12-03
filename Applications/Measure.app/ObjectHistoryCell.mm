@interface ObjectHistoryCell
- (_TtC7Measure17ObjectHistoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation ObjectHistoryCell

- (_TtC7Measure17ObjectHistoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1001B64C0(style, identifier, v6);
}

@end