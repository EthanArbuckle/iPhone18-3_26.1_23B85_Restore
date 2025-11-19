@interface DeviceActivityReport.SceneConfiguration
- (void)updateDeviceActivityData:(id)a3 segmentInterval:(id)a4 replyHandler:(id)a5;
@end

@implementation DeviceActivityReport.SceneConfiguration

- (void)updateDeviceActivityData:(id)a3 segmentInterval:(id)a4 replyHandler:(id)a5
{
  v7 = sub_23B6D69D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  v13 = sub_23B6D70B0();
  sub_23B6D69C0();
  _Block_copy(v12);
  v14 = self;
  sub_23B6CDF80(v13, v11, v14, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v8 + 8))(v11, v7);
}

@end