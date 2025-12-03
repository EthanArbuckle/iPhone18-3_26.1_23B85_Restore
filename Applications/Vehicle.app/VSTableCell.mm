@interface VSTableCell
- (_TtC7Vehicle11VSTableCell)initWithCoder:(id)coder;
- (_TtC7Vehicle11VSTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation VSTableCell

- (_TtC7Vehicle11VSTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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
  v9.super_class = type metadata accessor for VSTableCell();
  v7 = [(VSTableCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC7Vehicle11VSTableCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for VSTableCell();
  coderCopy = coder;
  v5 = [(VSTableCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end