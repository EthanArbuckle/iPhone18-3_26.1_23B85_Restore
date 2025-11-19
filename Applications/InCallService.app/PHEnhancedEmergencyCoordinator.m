@interface PHEnhancedEmergencyCoordinator
- (BOOL)isShownAboveCoverSheet;
- (BOOL)mediaUploadIsOnScreen;
- (BOOL)videoStreamingIsOnScreen;
- (TUCall)tuCall;
- (_TtP13InCallService36EnhancedEmergencyCoordinatorDelegate_)delegate;
- (id)getAudioRouteMenu;
- (void)appWillResignActive;
- (void)cameraFacingChange:(int64_t)a3;
- (void)cameraTurnedOffForRemoteSide;
- (void)cameraTurnedOnForRemoteSide;
- (void)cancelVideoStreamingRequest;
- (void)cleanUpViewAndObjectWhenCallEnds;
- (void)continueVideoStreamingRequest;
- (void)handleBannerPreviewRequest;
- (void)handleBannerUploadRequestDismissDuringStreaming;
- (void)handleBannerUploadRequestPickerDuringStreaming;
- (void)handleDeviceLockEvent;
- (void)handleDismissRequest;
- (void)handleFatalErrorWithRetryable:(BOOL)a3;
- (void)handleJindoRequestToChoosePhoto;
- (void)handleMediaUploadButtonTapped;
- (void)handleRTTVideoStreamingButtonTapped;
- (void)handleVideoStreamingButtonTapped;
- (void)notifyMitigationNeeded:(id)a3;
- (void)notifyNewRequestAvailable;
- (void)requestToReorderWebView;
- (void)runAnimationToFullScreenWebView;
- (void)setDelegate:(id)a3;
- (void)setShouldHideVideoStreamingControls:(BOOL)a3;
- (void)setTuCall:(id)a3;
- (void)torchStateChangeTo:(BOOL)a3;
- (void)transitionToRTTState:(int64_t)a3;
- (void)updateRTTAudioRouteButton;
- (void)updateRTTEnabled:(BOOL)a3;
- (void)videoStreamQuality:(id)a3;
- (void)videoStreamingAboutToStart;
- (void)webRTCConnectedAddresses:(id)a3;
- (void)webRTCstateChange:(id)a3;
@end

@implementation PHEnhancedEmergencyCoordinator

- (_TtP13InCallService36EnhancedEmergencyCoordinatorDelegate_)delegate
{
  v2 = sub_100193534();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1001935A4();
}

- (TUCall)tuCall
{
  v2 = sub_100193620();

  return v2;
}

- (void)setTuCall:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1001936AC(a3);
}

- (BOOL)videoStreamingIsOnScreen
{
  v2 = self;
  sub_100193CA8();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)mediaUploadIsOnScreen
{
  v2 = self;
  sub_100193E0C();
  v4 = v3;

  return v4 & 1;
}

- (void)setShouldHideVideoStreamingControls:(BOOL)a3
{
  v4 = self;
  sub_100193FD4(a3);
}

- (void)cleanUpViewAndObjectWhenCallEnds
{
  v2 = self;
  sub_1001943E0();
}

- (void)handleDeviceLockEvent
{
  v2 = self;
  sub_1001945BC();
}

- (void)handleDismissRequest
{
  v2 = self;
  sub_100194F78();
}

- (void)handleJindoRequestToChoosePhoto
{
  v2 = self;
  sub_10019530C();
}

- (void)handleBannerPreviewRequest
{
  v2 = self;
  sub_100195788();
}

- (void)handleBannerUploadRequestDismissDuringStreaming
{
  v2 = self;
  sub_1001957E4();
}

- (void)handleBannerUploadRequestPickerDuringStreaming
{
  v2 = self;
  sub_100195B24();
}

- (void)handleVideoStreamingButtonTapped
{
  v2 = self;
  sub_100196364();
}

- (void)handleMediaUploadButtonTapped
{
  v2 = self;
  sub_100196830();
}

- (void)requestToReorderWebView
{
  v2 = self;
  sub_10019B520();
}

- (void)videoStreamingAboutToStart
{
  v2 = self;
  sub_10019B608();
}

- (void)cancelVideoStreamingRequest
{
  v2 = self;
  sub_10019B820();
}

- (void)continueVideoStreamingRequest
{
  v2 = self;
  sub_10019BAF4();
}

- (void)cameraTurnedOffForRemoteSide
{
  v2 = self;
  sub_10019BE4C();
}

- (void)cameraTurnedOnForRemoteSide
{
  v2 = self;
  sub_10019BF30("EnhancedEmergency: emergency coordinator gets notified camera is turned on for remote side, going to remove intermittent label", &selRef_requestToRemoveEnhancedEmergencyIntermittentStateLabel);
}

- (void)runAnimationToFullScreenWebView
{
  v2 = self;
  sub_10019C084();
}

- (void)handleFatalErrorWithRetryable:(BOOL)a3
{
  v3 = self;
  sub_10019C250();
}

- (void)videoStreamQuality:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10019C438();
}

- (void)torchStateChangeTo:(BOOL)a3
{
  v3 = self;
  sub_10019C544();
}

- (void)webRTCstateChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10019C5EC();
}

- (void)cameraFacingChange:(int64_t)a3
{
  v3 = self;
  sub_10019C6A8();
}

- (void)webRTCConnectedAddresses:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_10019C750(v4);
}

- (void)notifyNewRequestAvailable
{
  v2 = self;
  sub_10019EB74();
}

- (void)notifyMitigationNeeded:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10019ECEC();
}

- (void)handleRTTVideoStreamingButtonTapped
{
  v2 = self;
  sub_1001A0FA4();
}

- (void)updateRTTEnabled:(BOOL)a3
{
  v4 = self;
  sub_1001A108C(a3);
}

- (void)transitionToRTTState:(int64_t)a3
{
  v4 = self;
  sub_1001A127C(a3);
}

- (void)appWillResignActive
{
  v2 = self;
  sub_1001A2010();
}

- (id)getAudioRouteMenu
{
  v2 = self;
  v3 = sub_1001A2138();

  return v3;
}

- (void)updateRTTAudioRouteButton
{
  v2 = self;
  sub_1001A21E0();
}

- (BOOL)isShownAboveCoverSheet
{
  v2 = self;
  v3 = sub_1001A2294();

  return v3 & 1;
}

@end