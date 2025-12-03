@interface ClarityUIEnhancedEmergencyCoordinator
- (id)getCurrentCall;
- (void)addMediaRequestViewController:(id)controller;
- (void)hideWebRTCViewController:(id)controller;
- (void)removeMediaRequestViewController:(id)controller;
- (void)requestHapticForRequest;
- (void)requestToAddResumeCameraLabel;
- (void)requestToDisableMediaUploadButton;
- (void)requestToDisableVideoStreamingButton;
- (void)requestToEnableMediaUploadButton;
- (void)requestToEnableVideoStreamingButton;
@end

@implementation ClarityUIEnhancedEmergencyCoordinator

- (void)addMediaRequestViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1001FDFD0();
}

- (void)removeMediaRequestViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1001FE2C4(controllerCopy);
}

- (void)hideWebRTCViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1001FE768(controllerCopy);
}

- (void)requestToEnableVideoStreamingButton
{
  selfCopy = self;
  sub_1001FEE5C();
}

- (void)requestToDisableVideoStreamingButton
{
  selfCopy = self;
  sub_1001FEEB8();
}

- (void)requestToEnableMediaUploadButton
{
  selfCopy = self;
  sub_1001FEF10();
}

- (void)requestToDisableMediaUploadButton
{
  selfCopy = self;
  sub_1001FEF68();
}

- (void)requestHapticForRequest
{
  selfCopy = self;
  sub_1001FF0A8();
}

- (void)requestToAddResumeCameraLabel
{
  selfCopy = self;
  sub_1001FF1EC();
}

- (id)getCurrentCall
{
  selfCopy = self;
  v3 = sub_1001FF344();

  return v3;
}

@end