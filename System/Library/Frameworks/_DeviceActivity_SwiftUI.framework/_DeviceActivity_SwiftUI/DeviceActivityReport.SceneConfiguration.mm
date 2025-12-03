@interface DeviceActivityReport.SceneConfiguration
- (void)updateDeviceActivityData:(id)data segmentInterval:(id)interval replyHandler:(id)handler;
@end

@implementation DeviceActivityReport.SceneConfiguration

- (void)updateDeviceActivityData:(id)data segmentInterval:(id)interval replyHandler:(id)handler
{
  v7 = sub_23B6D69D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(handler);
  v13 = sub_23B6D70B0();
  sub_23B6D69C0();
  _Block_copy(v12);
  selfCopy = self;
  sub_23B6CDF80(v13, v11, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v8 + 8))(v11, v7);
}

@end