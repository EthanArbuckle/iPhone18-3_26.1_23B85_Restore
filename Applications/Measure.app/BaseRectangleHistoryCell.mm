@interface BaseRectangleHistoryCell
- (_TtC7Measure24BaseRectangleHistoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation BaseRectangleHistoryCell

- (_TtC7Measure24BaseRectangleHistoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1001C3AD4(style, identifier, v6);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1001C3EFC();
}

@end