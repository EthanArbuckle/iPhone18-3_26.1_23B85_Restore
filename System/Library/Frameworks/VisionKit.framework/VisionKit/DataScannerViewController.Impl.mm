@interface DataScannerViewController.Impl
- (_TtCC9VisionKit25DataScannerViewController4Impl)init;
- (void)avCaptureFrameProvider:(id)provider cameraAccessGranted:(BOOL)granted;
- (void)avCaptureFrameProvider:(id)provider didCapturePhoto:(id)photo error:(id)error;
- (void)avCaptureFrameProvider:(id)provider didChangeIsRunning:(BOOL)running;
- (void)avCaptureFrameProviderDidFinishPreparation:(id)preparation;
- (void)avCaptureFrameProviderDidZoom:(id)zoom;
- (void)cameraRestrictedDidChange:(id)change;
- (void)frameProvider:(id)provider didChangeSceneLuminosity:(double)luminosity;
- (void)frameProvider:(id)provider didChangeSceneStabilityState:(unint64_t)state;
@end

@implementation DataScannerViewController.Impl

- (void)frameProvider:(id)provider didChangeSceneStabilityState:(unint64_t)state
{
  providerCopy = provider;
  selfCopy = self;
  sub_23B2DAC34(providerCopy, state);
}

- (void)frameProvider:(id)provider didChangeSceneLuminosity:(double)luminosity
{
  providerCopy = provider;
  selfCopy = self;
  sub_23B2DB058(providerCopy, luminosity);
}

- (void)avCaptureFrameProvider:(id)provider didChangeIsRunning:(BOOL)running
{
  providerCopy = provider;
  selfCopy = self;
  sub_23B2DB4F0(providerCopy, running);
}

- (void)avCaptureFrameProvider:(id)provider didCapturePhoto:(id)photo error:(id)error
{
  providerCopy = provider;
  photoCopy = photo;
  selfCopy = self;
  errorCopy = error;
  sub_23B2DB64C(providerCopy, photoCopy, error);
}

- (void)avCaptureFrameProviderDidZoom:(id)zoom
{
  zoomCopy = zoom;
  selfCopy = self;
  sub_23B2DBCBC(zoomCopy);
}

- (void)avCaptureFrameProviderDidFinishPreparation:(id)preparation
{
  preparationCopy = preparation;
  selfCopy = self;
  sub_23B2DBE20(preparationCopy);
}

- (void)avCaptureFrameProvider:(id)provider cameraAccessGranted:(BOOL)granted
{
  providerCopy = provider;
  selfCopy = self;
  sub_23B2DC2A4(providerCopy, granted);
}

- (void)cameraRestrictedDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
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