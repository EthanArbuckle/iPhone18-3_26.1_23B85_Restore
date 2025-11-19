@interface AXCameraManager
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)fetchCurrentCameraSceneBufferWithHandler:(id)a3;
@end

@implementation AXCameraManager

- (void)fetchCurrentCameraSceneBufferWithHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___AXCameraManager_frameHandler);
  v7 = *(&self->super.isa + OBJC_IVAR___AXCameraManager_frameHandler);
  *v6 = sub_1C0E4A63C;
  v6[1] = v5;
  v8 = self;

  sub_1C0E49F94(v7);
  sub_1C0E49694();
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1C0E4A3B4(v9);
}

@end