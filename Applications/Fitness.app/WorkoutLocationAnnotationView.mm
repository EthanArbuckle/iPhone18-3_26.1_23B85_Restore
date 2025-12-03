@interface WorkoutLocationAnnotationView
- (_TtC10FitnessApp29WorkoutLocationAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (_TtC10FitnessApp29WorkoutLocationAnnotationView)initWithCoder:(id)coder;
- (void)drawRect:(CGRect)rect;
@end

@implementation WorkoutLocationAnnotationView

- (_TtC10FitnessApp29WorkoutLocationAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  if (identifier)
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

- (_TtC10FitnessApp29WorkoutLocationAnnotationView)initWithCoder:(id)coder
{
  type metadata accessor for WorkoutLocationAnnotationView();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_1001B10C4(x, y, width, height);
}

@end