@interface SelfServiceSessionHistoryCell
- (_TtC11Diagnostics29SelfServiceSessionHistoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation SelfServiceSessionHistoryCell

- (_TtC11Diagnostics29SelfServiceSessionHistoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_10007DE78(style, identifier, v6);
}

@end