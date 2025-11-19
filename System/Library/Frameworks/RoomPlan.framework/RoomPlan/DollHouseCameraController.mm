@interface DollHouseCameraController
- (_TtC8RoomPlan25DollHouseCameraController)init;
- (void)didPanWithPanGesture:(id)a3;
- (void)didPinchWithPinchGesture:(id)a3;
- (void)didTouchDownWithLongPressGesture:(id)a3;
@end

@implementation DollHouseCameraController

- (void)didPanWithPanGesture:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_camera);
  v6 = a3;
  v5 = self;
  sub_23A9E8A3C(v6);
}

- (void)didPinchWithPinchGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23A9E9870(v4);
}

- (void)didTouchDownWithLongPressGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23A9E999C(v4);
}

- (_TtC8RoomPlan25DollHouseCameraController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end