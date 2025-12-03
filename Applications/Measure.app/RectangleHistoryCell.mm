@interface RectangleHistoryCell
- (_TtC7Measure20RectangleHistoryCell)initWithCoder:(id)coder;
- (_TtC7Measure20RectangleHistoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation RectangleHistoryCell

- (_TtC7Measure20RectangleHistoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    identifier = String._bridgeToObjectiveC()();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(BaseRectangleHistoryCell *)&v10 initWithStyle:style reuseIdentifier:identifier];

  return v8;
}

- (_TtC7Measure20RectangleHistoryCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(BaseRectangleHistoryCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end