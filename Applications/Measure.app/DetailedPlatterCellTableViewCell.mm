@interface DetailedPlatterCellTableViewCell
- (_TtC7Measure32DetailedPlatterCellTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation DetailedPlatterCellTableViewCell

- (_TtC7Measure32DetailedPlatterCellTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100013F6C(style, identifier, v6);
}

@end