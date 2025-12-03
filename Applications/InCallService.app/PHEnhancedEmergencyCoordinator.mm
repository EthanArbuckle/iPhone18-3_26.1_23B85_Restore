@interface PHEnhancedEmergencyCoordinator
- (BOOL)isShownAboveCoverSheet;
- (BOOL)mediaUploadIsOnScreen;
- (BOOL)videoStreamingIsOnScreen;
- (TUCall)tuCall;
- (_TtP13InCallService36EnhancedEmergencyCoordinatorDelegate_)delegate;
- (id)getAudioRouteMenu;
- (void)appWillResignActive;
- (void)cameraFacingChange:(int64_t)change;
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
- (void)handleFatalErrorWithRetryable:(BOOL)retryable;
- (void)handleJindoRequestToChoosePhoto;
- (void)handleMediaUploadButtonTapped;
- (void)handleRTTVideoStreamingButtonTapped;
- (void)handleVideoStreamingButtonTapped;
- (void)notifyMitigationNeeded:(id)needed;
- (void)notifyNewRequestAvailable;
- (void)requestToReorderWebView;
- (void)runAnimationToFullScreenWebView;
- (void)setDelegate:(id)delegate;
- (void)setShouldHideVideoStreamingControls:(BOOL)controls;
- (void)setTuCall:(id)call;
- (void)torchStateChangeTo:(BOOL)to;
- (void)transitionToRTTState:(int64_t)state;
- (void)updateRTTAudioRouteButton;
- (void)updateRTTEnabled:(BOOL)enabled;
- (void)videoStreamQuality:(id)quality;
- (void)videoStreamingAboutToStart;
- (void)webRTCConnectedAddresses:(id)addresses;
- (void)webRTCstateChange:(id)change;
@end

@implementation PHEnhancedEmergencyCoordinator

- (_TtP13InCallService36EnhancedEmergencyCoordinatorDelegate_)delegate
{
  v2 = sub_100193534();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001935A4();
}

- (TUCall)tuCall
{
  v2 = sub_100193620();

  return v2;
}

- (void)setTuCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  sub_1001936AC(call);
}

- (BOOL)videoStreamingIsOnScreen
{
  selfCopy = self;
  sub_100193CA8();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)mediaUploadIsOnScreen
{
  selfCopy = self;
  sub_100193E0C();
  v4 = v3;

  return v4 & 1;
}

- (void)setShouldHideVideoStreamingControls:(BOOL)controls
{
  selfCopy = self;
  sub_100193FD4(controls);
}

- (void)cleanUpViewAndObjectWhenCallEnds
{
  selfCopy = self;
  sub_1001943E0();
}

- (void)handleDeviceLockEvent
{
  selfCopy = self;
  sub_1001945BC();
}

- (void)handleDismissRequest
{
  selfCopy = self;
  sub_100194F78();
}

- (void)handleJindoRequestToChoosePhoto
{
  selfCopy = self;
  sub_10019530C();
}

- (void)handleBannerPreviewRequest
{
  selfCopy = self;
  sub_100195788();
}

- (void)handleBannerUploadRequestDismissDuringStreaming
{
  selfCopy = self;
  sub_1001957E4();
}

- (void)handleBannerUploadRequestPickerDuringStreaming
{
  selfCopy = self;
  sub_100195B24();
}

- (void)handleVideoStreamingButtonTapped
{
  selfCopy = self;
  sub_100196364();
}

- (void)handleMediaUploadButtonTapped
{
  selfCopy = self;
  sub_100196830();
}

- (void)requestToReorderWebView
{
  selfCopy = self;
  sub_10019B520();
}

- (void)videoStreamingAboutToStart
{
  selfCopy = self;
  sub_10019B608();
}

- (void)cancelVideoStreamingRequest
{
  selfCopy = self;
  sub_10019B820();
}

- (void)continueVideoStreamingRequest
{
  selfCopy = self;
  sub_10019BAF4();
}

- (void)cameraTurnedOffForRemoteSide
{
  selfCopy = self;
  sub_10019BE4C();
}

- (void)cameraTurnedOnForRemoteSide
{
  selfCopy = self;
  sub_10019BF30("EnhancedEmergency: emergency coordinator gets notified camera is turned on for remote side, going to remove intermittent label", &selRef_requestToRemoveEnhancedEmergencyIntermittentStateLabel);
}

- (void)runAnimationToFullScreenWebView
{
  selfCopy = self;
  sub_10019C084();
}

- (void)handleFatalErrorWithRetryable:(BOOL)retryable
{
  selfCopy = self;
  sub_10019C250();
}

- (void)videoStreamQuality:(id)quality
{
  qualityCopy = quality;
  selfCopy = self;
  sub_10019C438();
}

- (void)torchStateChangeTo:(BOOL)to
{
  selfCopy = self;
  sub_10019C544();
}

- (void)webRTCstateChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10019C5EC();
}

- (void)cameraFacingChange:(int64_t)change
{
  selfCopy = self;
  sub_10019C6A8();
}

- (void)webRTCConnectedAddresses:(id)addresses
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10019C750(v4);
}

- (void)notifyNewRequestAvailable
{
  selfCopy = self;
  sub_10019EB74();
}

- (void)notifyMitigationNeeded:(id)needed
{
  neededCopy = needed;
  selfCopy = self;
  sub_10019ECEC();
}

- (void)handleRTTVideoStreamingButtonTapped
{
  selfCopy = self;
  sub_1001A0FA4();
}

- (void)updateRTTEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_1001A108C(enabled);
}

- (void)transitionToRTTState:(int64_t)state
{
  selfCopy = self;
  sub_1001A127C(state);
}

- (void)appWillResignActive
{
  selfCopy = self;
  sub_1001A2010();
}

- (id)getAudioRouteMenu
{
  selfCopy = self;
  v3 = sub_1001A2138();

  return v3;
}

- (void)updateRTTAudioRouteButton
{
  selfCopy = self;
  sub_1001A21E0();
}

- (BOOL)isShownAboveCoverSheet
{
  selfCopy = self;
  v3 = sub_1001A2294();

  return v3 & 1;
}

@end