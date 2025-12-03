@interface ActivitySharingCompetitionActionListSwiftUITableViewCell
- (_TtC10FitnessApp56ActivitySharingCompetitionActionListSwiftUITableViewCell)initWithCoder:(id)coder;
- (_TtC10FitnessApp56ActivitySharingCompetitionActionListSwiftUITableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation ActivitySharingCompetitionActionListSwiftUITableViewCell

- (_TtC10FitnessApp56ActivitySharingCompetitionActionListSwiftUITableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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
  v9.super_class = type metadata accessor for ActivitySharingCompetitionActionListSwiftUITableViewCell();
  v7 = [(ActivitySharingCompetitionActionListSwiftUITableViewCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC10FitnessApp56ActivitySharingCompetitionActionListSwiftUITableViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ActivitySharingCompetitionActionListSwiftUITableViewCell();
  coderCopy = coder;
  v5 = [(ActivitySharingCompetitionActionListSwiftUITableViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end