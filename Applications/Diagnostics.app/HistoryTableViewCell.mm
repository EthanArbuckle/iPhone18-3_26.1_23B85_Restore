@interface HistoryTableViewCell
- (_TtC11Diagnostics20HistoryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation HistoryTableViewCell

- (_TtC11Diagnostics20HistoryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100113660(style, identifier, v6);
}

@end