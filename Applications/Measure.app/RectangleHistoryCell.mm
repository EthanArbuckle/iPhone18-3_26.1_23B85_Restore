@interface RectangleHistoryCell
- (_TtC7Measure20RectangleHistoryCell)initWithCoder:(id)a3;
- (_TtC7Measure20RectangleHistoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation RectangleHistoryCell

- (_TtC7Measure20RectangleHistoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = String._bridgeToObjectiveC()();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(BaseRectangleHistoryCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];

  return v8;
}

- (_TtC7Measure20RectangleHistoryCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(BaseRectangleHistoryCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end