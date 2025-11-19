@interface CHWorkoutsListTableViewCell
- (CHWorkoutsListTableViewCell)initWithCoder:(id)a3;
- (CHWorkoutsListTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
- (void)setWorkout:(id)a3 fitnessAppContext:(id)a4 formattingManager:(id)a5 achievementCount:(int64_t)a6;
- (void)setWorkout:(id)a3 fitnessAppContext:(id)a4 formattingManager:(id)a5 achievementCount:(int64_t)a6 completion:(id)a7;
@end

@implementation CHWorkoutsListTableViewCell

- (CHWorkoutsListTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100173F24(a3, a4, v6);
}

- (void)setWorkout:(id)a3 fitnessAppContext:(id)a4 formattingManager:(id)a5 achievementCount:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = self;
  sub_1001742D0(v10, v11, v12, a6);
}

- (void)setWorkout:(id)a3 fitnessAppContext:(id)a4 formattingManager:(id)a5 achievementCount:(int64_t)a6 completion:(id)a7
{
  v12 = _Block_copy(a7);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_10016B148;
  }

  else
  {
    v13 = 0;
  }

  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = self;
  sub_100174518(v14, v15, v16, a6, v12, v13);
  sub_1000245E0(v12);
}

- (CHWorkoutsListTableViewCell)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WorkoutsListTableViewCell();
  v2 = v3.receiver;
  [(CHWorkoutsListTableViewCell *)&v3 prepareForReuse];
  sub_10017577C();
}

@end