@interface LineHistoryCell
- (_TtC7Measure15LineHistoryCell)initWithCoder:(id)a3;
- (_TtC7Measure15LineHistoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation LineHistoryCell

- (_TtC7Measure15LineHistoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for LineHistoryCell();
  v7 = [(BaseLineHistoryCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC7Measure15LineHistoryCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LineHistoryCell();
  v4 = a3;
  v5 = [(BaseLineHistoryCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end