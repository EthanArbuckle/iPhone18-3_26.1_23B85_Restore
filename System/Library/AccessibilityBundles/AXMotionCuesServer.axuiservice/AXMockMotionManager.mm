@interface AXMockMotionManager
- (_TtC18AXMotionCuesServer19AXMockMotionManager)init;
- (id)deviceMotionNoSim;
- (id)initUsing6AxisSensorFusion;
- (id)initUsingGyroOnlySensorFusion;
- (void)startDeviceMotionUpdates;
- (void)startDeviceMotionUpdatesNoSim;
- (void)stopDeviceMotionUpdates;
@end

@implementation AXMockMotionManager

- (id)deviceMotionNoSim
{
  selfCopy = self;
  v3 = sub_87D0();

  return v3;
}

- (void)startDeviceMotionUpdates
{
  selfCopy = self;
  sub_8D14(sub_9BE0, &unk_458C0);
}

- (void)startDeviceMotionUpdatesNoSim
{
  selfCopy = self;
  sub_8D14(sub_9788, &unk_45898);
}

- (void)stopDeviceMotionUpdates
{
  selfCopy = self;
  sub_8EA0();
}

- (_TtC18AXMotionCuesServer19AXMockMotionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initUsing6AxisSensorFusion
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initUsingGyroOnlySensorFusion
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end