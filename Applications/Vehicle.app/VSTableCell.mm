@interface VSTableCell
- (_TtC7Vehicle11VSTableCell)initWithCoder:(id)a3;
- (_TtC7Vehicle11VSTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation VSTableCell

- (_TtC7Vehicle11VSTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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
  v9.super_class = type metadata accessor for VSTableCell();
  v7 = [(VSTableCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC7Vehicle11VSTableCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for VSTableCell();
  v4 = a3;
  v5 = [(VSTableCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end