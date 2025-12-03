@interface AXCameraManager
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)fetchCurrentCameraSceneBufferWithHandler:(id)handler;
@end

@implementation AXCameraManager

- (void)fetchCurrentCameraSceneBufferWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___AXCameraManager_frameHandler);
  v7 = *(&self->super.isa + OBJC_IVAR___AXCameraManager_frameHandler);
  *v6 = sub_1C0E4A63C;
  v6[1] = v5;
  selfCopy = self;

  sub_1C0E49F94(v7);
  sub_1C0E49694();
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  outputCopy = output;
  bufferCopy = buffer;
  connectionCopy = connection;
  selfCopy = self;
  sub_1C0E4A3B4(bufferCopy);
}

@end