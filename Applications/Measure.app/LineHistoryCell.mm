@interface LineHistoryCell
- (_TtC7Measure15LineHistoryCell)initWithCoder:(id)coder;
- (_TtC7Measure15LineHistoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation LineHistoryCell

- (_TtC7Measure15LineHistoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
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
  v7 = [(BaseLineHistoryCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC7Measure15LineHistoryCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LineHistoryCell();
  coderCopy = coder;
  v5 = [(BaseLineHistoryCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end