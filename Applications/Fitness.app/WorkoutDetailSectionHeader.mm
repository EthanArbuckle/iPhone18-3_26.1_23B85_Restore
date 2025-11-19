@interface WorkoutDetailSectionHeader
- (_TtC10FitnessApp26WorkoutDetailSectionHeader)initWithCoder:(id)a3;
- (_TtC10FitnessApp26WorkoutDetailSectionHeader)initWithReuseIdentifier:(id)a3;
- (void)configureWithTitle:(id)a3 buttonAction:(id)a4;
@end

@implementation WorkoutDetailSectionHeader

- (void)configureWithTitle:(id)a3 buttonAction:(id)a4
{
  v5 = _Block_copy(a4);
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

  v10 = self;
  sub_10050ADC0(v6, v8, 0, 0, v5, v9, 0.0);

  sub_1000245E0(v5);
}

- (_TtC10FitnessApp26WorkoutDetailSectionHeader)initWithReuseIdentifier:(id)a3
{
  if (a3)
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

- (_TtC10FitnessApp26WorkoutDetailSectionHeader)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutDetailSectionHeader();
  v4 = a3;
  v5 = [(ActivityTileSectionHeader *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end