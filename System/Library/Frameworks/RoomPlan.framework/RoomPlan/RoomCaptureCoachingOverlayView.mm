@interface RoomCaptureCoachingOverlayView
- (void)didPanWithPanGesture:(id)gesture;
- (void)didPinchWithPinchGesture:(id)gesture;
- (void)didTouchDownWithLongPressGesture:(id)gesture;
@end

@implementation RoomCaptureCoachingOverlayView

- (void)didPanWithPanGesture:(id)gesture
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera))
  {
    gestureCopy = gesture;
    selfCopy = self;

    sub_23A9E8A3C(gestureCopy);
  }
}

- (void)didPinchWithPinchGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_23A9C7C90(gestureCopy);
}

- (void)didTouchDownWithLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_23A9C7DE0(gestureCopy);
}

@end