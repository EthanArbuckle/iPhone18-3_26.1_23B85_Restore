@interface ActivitySharingHeaderSwiftUITableViewCell
- (_TtC10FitnessApp41ActivitySharingHeaderSwiftUITableViewCell)initWithCoder:(id)a3;
- (_TtC10FitnessApp41ActivitySharingHeaderSwiftUITableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation ActivitySharingHeaderSwiftUITableViewCell

- (_TtC10FitnessApp41ActivitySharingHeaderSwiftUITableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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
  v9.super_class = type metadata accessor for ActivitySharingHeaderSwiftUITableViewCell();
  v7 = [(ActivitySharingHeaderSwiftUITableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC10FitnessApp41ActivitySharingHeaderSwiftUITableViewCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ActivitySharingHeaderSwiftUITableViewCell();
  v4 = a3;
  v5 = [(ActivitySharingHeaderSwiftUITableViewCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end