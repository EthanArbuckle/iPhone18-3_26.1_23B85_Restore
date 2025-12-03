@interface CRLUSDZRotationKnobTracker
- (_TtC8Freeform26CRLUSDZRotationKnobTracker)init;
- (_TtC8Freeform26CRLUSDZRotationKnobTracker)initWithRep:(id)rep knob:(id)knob;
- (void)beginMovingKnob;
- (void)commitChangesForReps:(id)reps;
- (void)endMovingKnob;
- (void)moveKnobToRepPosition:(CGPoint)position;
@end

@implementation CRLUSDZRotationKnobTracker

- (void)beginMovingKnob
{
  selfCopy = self;
  sub_100604BB8();
}

- (void)commitChangesForReps:(id)reps
{
  sub_1006055C8();
  sub_100605614();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100604E40();
}

- (void)moveKnobToRepPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  selfCopy = self;
  sub_100604FB0(x, y);
}

- (void)endMovingKnob
{
  selfCopy = self;
  sub_100605328();
}

- (_TtC8Freeform26CRLUSDZRotationKnobTracker)initWithRep:(id)rep knob:(id)knob
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8Freeform26CRLUSDZRotationKnobTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end