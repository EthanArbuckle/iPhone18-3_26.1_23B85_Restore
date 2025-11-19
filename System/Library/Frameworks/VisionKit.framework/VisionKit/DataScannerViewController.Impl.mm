@interface DataScannerViewController.Impl
- (_TtCC9VisionKit25DataScannerViewController4Impl)init;
- (void)avCaptureFrameProvider:(id)a3 cameraAccessGranted:(BOOL)a4;
- (void)avCaptureFrameProvider:(id)a3 didCapturePhoto:(id)a4 error:(id)a5;
- (void)avCaptureFrameProvider:(id)a3 didChangeIsRunning:(BOOL)a4;
- (void)avCaptureFrameProviderDidFinishPreparation:(id)a3;
- (void)avCaptureFrameProviderDidZoom:(id)a3;
- (void)cameraRestrictedDidChange:(id)a3;
- (void)frameProvider:(id)a3 didChangeSceneLuminosity:(double)a4;
- (void)frameProvider:(id)a3 didChangeSceneStabilityState:(unint64_t)a4;
@end

@implementation DataScannerViewController.Impl

- (void)frameProvider:(id)a3 didChangeSceneStabilityState:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_23B2DAC34(v6, a4);
}

- (void)frameProvider:(id)a3 didChangeSceneLuminosity:(double)a4
{
  v6 = a3;
  v7 = self;
  sub_23B2DB058(v6, a4);
}

- (void)avCaptureFrameProvider:(id)a3 didChangeIsRunning:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_23B2DB4F0(v6, a4);
}

- (void)avCaptureFrameProvider:(id)a3 didCapturePhoto:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_23B2DB64C(v8, v9, a5);
}

- (void)avCaptureFrameProviderDidZoom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23B2DBCBC(v4);
}

- (void)avCaptureFrameProviderDidFinishPreparation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23B2DBE20(v4);
}

- (void)avCaptureFrameProvider:(id)a3 cameraAccessGranted:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_23B2DC2A4(v6, a4);
}

- (void)cameraRestrictedDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23B2E8A4C();
}

- (_TtCC9VisionKit25DataScannerViewController4Impl)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for DataScannerViewController.Impl();
  return [(DataScannerViewController.Impl *)&v4 init];
}

@end