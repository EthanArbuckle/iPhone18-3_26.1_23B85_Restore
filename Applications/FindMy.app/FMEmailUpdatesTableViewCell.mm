@interface FMEmailUpdatesTableViewCell
- (_TtC6FindMy27FMEmailUpdatesTableViewCell)initWithCoder:(id)coder;
- (_TtC6FindMy27FMEmailUpdatesTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation FMEmailUpdatesTableViewCell

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for FMEmailUpdatesTableViewCell();
  [(FMPlatteredTableViewCell *)&v2 layoutSubviews];
}

- (_TtC6FindMy27FMEmailUpdatesTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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
  v9.super_class = type metadata accessor for FMEmailUpdatesTableViewCell();
  v7 = [(FMPlatteredTableViewCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC6FindMy27FMEmailUpdatesTableViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMEmailUpdatesTableViewCell();
  coderCopy = coder;
  v5 = [(FMPlatteredTableViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end