@interface CRLUSDZPlayPauseKnobTracker
- (_TtC8Freeform27CRLUSDZPlayPauseKnobTracker)init;
- (_TtC8Freeform27CRLUSDZPlayPauseKnobTracker)initWithRep:(id)rep knob:(id)knob;
- (void)beginMovingKnob;
- (void)endMovingKnob;
@end

@implementation CRLUSDZPlayPauseKnobTracker

- (void)beginMovingKnob
{
  selfCopy = self;
  sub_100A7B780();
}

- (void)endMovingKnob
{
  selfCopy = self;
  sub_100A7B860();
}

- (_TtC8Freeform27CRLUSDZPlayPauseKnobTracker)initWithRep:(id)rep knob:(id)knob
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8Freeform27CRLUSDZPlayPauseKnobTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end