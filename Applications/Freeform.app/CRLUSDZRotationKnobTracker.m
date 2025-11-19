@interface CRLUSDZRotationKnobTracker
- (_TtC8Freeform26CRLUSDZRotationKnobTracker)init;
- (_TtC8Freeform26CRLUSDZRotationKnobTracker)initWithRep:(id)a3 knob:(id)a4;
- (void)beginMovingKnob;
- (void)commitChangesForReps:(id)a3;
- (void)endMovingKnob;
- (void)moveKnobToRepPosition:(CGPoint)a3;
@end

@implementation CRLUSDZRotationKnobTracker

- (void)beginMovingKnob
{
  v2 = self;
  sub_100604BB8();
}

- (void)commitChangesForReps:(id)a3
{
  sub_1006055C8();
  sub_100605614();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_100604E40();
}

- (void)moveKnobToRepPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_100604FB0(x, y);
}

- (void)endMovingKnob
{
  v2 = self;
  sub_100605328();
}

- (_TtC8Freeform26CRLUSDZRotationKnobTracker)initWithRep:(id)a3 knob:(id)a4
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