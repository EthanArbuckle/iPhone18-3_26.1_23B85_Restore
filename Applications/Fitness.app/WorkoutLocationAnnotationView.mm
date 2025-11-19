@interface WorkoutLocationAnnotationView
- (_TtC10FitnessApp29WorkoutLocationAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (_TtC10FitnessApp29WorkoutLocationAnnotationView)initWithCoder:(id)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation WorkoutLocationAnnotationView

- (_TtC10FitnessApp29WorkoutLocationAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_unknownObjectRetain();
  return sub_1001B0E24(v7, v4, v6);
}

- (_TtC10FitnessApp29WorkoutLocationAnnotationView)initWithCoder:(id)a3
{
  type metadata accessor for WorkoutLocationAnnotationView();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_1001B10C4(x, y, width, height);
}

@end