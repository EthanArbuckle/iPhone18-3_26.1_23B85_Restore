@interface CRLUSDZKnobController
- (_TtC8Freeform21CRLUSDZKnobController)init;
- (void)hideWithImmediately:(BOOL)immediately;
@end

@implementation CRLUSDZKnobController

- (void)hideWithImmediately:(BOOL)immediately
{
  selfCopy = self;
  sub_100F97F98(immediately);
}

- (_TtC8Freeform21CRLUSDZKnobController)init
{
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState) = 2;
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_rotationKnob) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_currentKnobs) = _swiftEmptyArrayStorage;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLUSDZKnobController();
  return [(CRLUSDZKnobController *)&v3 init];
}

@end