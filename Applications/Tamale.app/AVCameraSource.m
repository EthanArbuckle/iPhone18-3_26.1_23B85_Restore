@interface AVCameraSource
- (_TtC6Tamale14AVCameraSource)init;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
@end

@implementation AVCameraSource

- (_TtC6Tamale14AVCameraSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100060AE8(v9);
}

@end