@interface DivingLocationAnnotationView
- (_TtC10FitnessApp28DivingLocationAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (_TtC10FitnessApp28DivingLocationAnnotationView)initWithCoder:(id)a3;
@end

@implementation DivingLocationAnnotationView

- (_TtC10FitnessApp28DivingLocationAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
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
  return sub_1002F3F38(v7, v4, v6);
}

- (_TtC10FitnessApp28DivingLocationAnnotationView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp28DivingLocationAnnotationView_pinSize) = 0x402E000000000000;
  type metadata accessor for DivingLocationAnnotationView();
  swift_deallocPartialClassInstance();
  return 0;
}

@end