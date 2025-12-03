@interface WorkoutDetailSectionHeader
- (_TtC10FitnessApp26WorkoutDetailSectionHeader)initWithCoder:(id)coder;
- (_TtC10FitnessApp26WorkoutDetailSectionHeader)initWithReuseIdentifier:(id)identifier;
- (void)configureWithTitle:(id)title buttonAction:(id)action;
@end

@implementation WorkoutDetailSectionHeader

- (void)configureWithTitle:(id)title buttonAction:(id)action
{
  v5 = _Block_copy(action);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v5 = sub_100599BF8;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  sub_10050ADC0(v6, v8, 0, 0, v5, v9, 0.0);

  sub_1000245E0(v5);
}

- (_TtC10FitnessApp26WorkoutDetailSectionHeader)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutDetailSectionHeader();
  v5 = [(ActivityTileSectionHeader *)&v7 initWithReuseIdentifier:v4];

  return v5;
}

- (_TtC10FitnessApp26WorkoutDetailSectionHeader)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutDetailSectionHeader();
  coderCopy = coder;
  v5 = [(ActivityTileSectionHeader *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end