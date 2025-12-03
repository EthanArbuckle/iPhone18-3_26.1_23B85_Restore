@interface DollHouseCameraController
- (_TtC8RoomPlan25DollHouseCameraController)init;
- (void)didPanWithPanGesture:(id)gesture;
- (void)didPinchWithPinchGesture:(id)gesture;
- (void)didTouchDownWithLongPressGesture:(id)gesture;
@end

@implementation DollHouseCameraController

- (void)didPanWithPanGesture:(id)gesture
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_camera);
  gestureCopy = gesture;
  selfCopy = self;
  sub_23A9E8A3C(gestureCopy);
}

- (void)didPinchWithPinchGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_23A9E9870(gestureCopy);
}

- (void)didTouchDownWithLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_23A9E999C(gestureCopy);
}

- (_TtC8RoomPlan25DollHouseCameraController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end