@interface RoomCaptureCoachingOverlayView
- (void)didPanWithPanGesture:(id)a3;
- (void)didPinchWithPinchGesture:(id)a3;
- (void)didTouchDownWithLongPressGesture:(id)a3;
@end

@implementation RoomCaptureCoachingOverlayView

- (void)didPanWithPanGesture:(id)a3
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera))
  {
    v4 = a3;
    v5 = self;

    sub_23A9E8A3C(v4);
  }
}

- (void)didPinchWithPinchGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23A9C7C90(v4);
}

- (void)didTouchDownWithLongPressGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23A9C7DE0(v4);
}

@end