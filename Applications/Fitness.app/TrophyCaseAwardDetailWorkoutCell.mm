@interface TrophyCaseAwardDetailWorkoutCell
- (_TtC10FitnessApp32TrophyCaseAwardDetailWorkoutCell)initWithCoder:(id)coder;
- (_TtC10FitnessApp32TrophyCaseAwardDetailWorkoutCell)initWithFrame:(CGRect)frame;
@end

@implementation TrophyCaseAwardDetailWorkoutCell

- (_TtC10FitnessApp32TrophyCaseAwardDetailWorkoutCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC10FitnessApp32TrophyCaseAwardDetailWorkoutCell_workoutContentView;
  v9 = [objc_allocWithZone(type metadata accessor for WorkoutsListContentView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(&self->super.super.super.super.super.isa + v8) = v9;
  v14.receiver = self;
  v14.super_class = type metadata accessor for TrophyCaseAwardDetailWorkoutCell();
  height = [(TrophyCaseAwardDetailWorkoutCell *)&v14 initWithFrame:x, y, width, height];
  v11 = *(&height->super.super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp32TrophyCaseAwardDetailWorkoutCell_workoutContentView);
  v12 = height;
  [(TrophyCaseAwardDetailWorkoutCell *)v12 addSubview:v11];
  sub_1005222E4();

  return v12;
}

- (_TtC10FitnessApp32TrophyCaseAwardDetailWorkoutCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC10FitnessApp32TrophyCaseAwardDetailWorkoutCell_workoutContentView;
  v5 = [objc_allocWithZone(type metadata accessor for WorkoutsListContentView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(&self->super.super.super.super.super.isa + v4) = v5;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end