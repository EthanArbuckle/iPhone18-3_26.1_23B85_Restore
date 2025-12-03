@interface ActivitySharingHeaderSwiftUITableViewCell
- (_TtC10FitnessApp41ActivitySharingHeaderSwiftUITableViewCell)initWithCoder:(id)coder;
- (_TtC10FitnessApp41ActivitySharingHeaderSwiftUITableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation ActivitySharingHeaderSwiftUITableViewCell

- (_TtC10FitnessApp41ActivitySharingHeaderSwiftUITableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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
  v9.super_class = type metadata accessor for ActivitySharingHeaderSwiftUITableViewCell();
  v7 = [(ActivitySharingHeaderSwiftUITableViewCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC10FitnessApp41ActivitySharingHeaderSwiftUITableViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ActivitySharingHeaderSwiftUITableViewCell();
  coderCopy = coder;
  v5 = [(ActivitySharingHeaderSwiftUITableViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end