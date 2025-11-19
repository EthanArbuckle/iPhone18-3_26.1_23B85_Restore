@interface ClarityUIEnhancedEmergencyCoordinator
- (id)getCurrentCall;
- (void)addMediaRequestViewController:(id)a3;
- (void)hideWebRTCViewController:(id)a3;
- (void)removeMediaRequestViewController:(id)a3;
- (void)requestHapticForRequest;
- (void)requestToAddResumeCameraLabel;
- (void)requestToDisableMediaUploadButton;
- (void)requestToDisableVideoStreamingButton;
- (void)requestToEnableMediaUploadButton;
- (void)requestToEnableVideoStreamingButton;
@end

@implementation ClarityUIEnhancedEmergencyCoordinator

- (void)addMediaRequestViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001FDFD0();
}

- (void)removeMediaRequestViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001FE2C4(v4);
}

- (void)hideWebRTCViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001FE768(v4);
}

- (void)requestToEnableVideoStreamingButton
{
  v2 = self;
  sub_1001FEE5C();
}

- (void)requestToDisableVideoStreamingButton
{
  v2 = self;
  sub_1001FEEB8();
}

- (void)requestToEnableMediaUploadButton
{
  v2 = self;
  sub_1001FEF10();
}

- (void)requestToDisableMediaUploadButton
{
  v2 = self;
  sub_1001FEF68();
}

- (void)requestHapticForRequest
{
  v2 = self;
  sub_1001FF0A8();
}

- (void)requestToAddResumeCameraLabel
{
  v2 = self;
  sub_1001FF1EC();
}

- (id)getCurrentCall
{
  v2 = self;
  v3 = sub_1001FF344();

  return v3;
}

@end